class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"] span', text: 'Clients'
    element :spinner, 'div.swal2-container.swal2-backdrop-show'
    def click_clients
        wait_for_modal_to_disappear
        wait_until_clients_visible(wait: 10)
        clients.click
    end
    def wait_for_spinner_to_disappear(timeout: 10)
        has_no_spinner?(wait: timeout)
    end
    def wait_for_modal_to_disappear(timeout: 10)
    Capybara.using_wait_time(timeout) do
      page.document.synchronize do
        visible = page.evaluate_script(<<~JS)
          (function() {
            var el = document.querySelector('.swal2-container');
            return el && el.offsetParent !== null;
          })();
        JS

        raise 'SweetAlert2 is still visible' if visible
      end
    end
  end
end