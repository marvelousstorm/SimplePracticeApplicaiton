class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"] svg'
    element :spinner, 'div[class*="backdrop-show"]'
    element :notNowButton, 'button', text: 'Not now'

    def click_clients
        wait_until_clients_visible
        clients.click
    end
end