class ClientPage < SitePrism::Page
    set_url '/clients'
    element :searchInput, 'input[name="utility-search"]' 
    def client(client_name)
        find('a.record-name', text: client_name)
    end
    element :clientStatusButton, 'button[class*="active"]'
    def changeStatusButton(stauts)
        find('button', text: stauts)
    end
    element :noClientsMessage, 'div[class*="empty"]'
end