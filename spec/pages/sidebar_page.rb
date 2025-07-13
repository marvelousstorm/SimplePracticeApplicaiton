class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"] svg'
    element :spinner, 'div.swal2-container.swal2-backdrop-show'
    element :notNowButton, 'button', text: 'Not now'

    def click_clients
        timezoneModalPresent
        wait_until_clients_visible
        clients.click
    end
    def timezoneModalPresent
        if has_spinner?(wait: 10)
            notNowButton.click
        end
    end
end