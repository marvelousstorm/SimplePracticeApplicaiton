class SidebarPage < SitePrism::Page
    element :clients, 'a[aria-label="Clients"]'
    def click_clients
        wait_until_clients_visible(wait: 10)
        clients.click
    end
end