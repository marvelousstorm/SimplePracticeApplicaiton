class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"] svg'
    element :spinner, 'div.swal2-container.swal2-backdrop-show'
    element :notNowButton, 'button', text: 'Not now'

    def click_clients
        # wait_until_spinner_invisible
        # wait_until_spinner_disappears
        timezoneModalPresent
        wait_until_clients_visible
        clients.click
    end
    # def wait_until_spinner_disappears(timeout = 40)
    #     has_no_spinner?(wait: timeout)
    # end
    def timezoneModalPresent
        if has_spinner?(wait: 5)
            notNowButton.click
        end
    end
end