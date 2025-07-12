class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"] svg'
    element :spinner, 'div.swal2-container.swal2-backdrop-show'
    def click_clients
        wait_until_spinner_invisible
        wait_until_spinner_disappears
        wait_until_clients_visible(wait: 10)
        clients.click
    end
    def wait_until_spinner_disappears(timeout = 10)
        has_no_spinner?(wait: timeout)
    end
end