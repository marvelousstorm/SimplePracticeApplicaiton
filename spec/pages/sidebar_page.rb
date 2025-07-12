class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"]'
    element :spinner, 'div[class*="backdrop-show"]'
    def click_clients
        wait_for_spinner_to_disappear
        wait_until_clients_visible(wait: 10)
        clients.click
    end
    def wait_for_spinner_to_disappear(timeout: 10)
        has_no_spinner?(wait: timeout)
    end
end