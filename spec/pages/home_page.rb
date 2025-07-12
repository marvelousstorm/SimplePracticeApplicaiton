require 'site_prism'

class HomePage < SitePrism::Page
    set_url '/calendar/appointments'
    element :spinner, 'div[class="div.swal2-container.swal2-backdrop-show"]'
    element :logoLink, 'a[class*="logo"]'
    element :createButton, 'button.create'
    element :addClientButton, 'button.button-link', text: 'Create client'
    element :searchClientInput, 'input[placeholder="Search clients"]'
    def click_create_button
       wait_until_createButton_visible(wait: 10)
        home_page.createButton.click
    end
    def click_add_client_button
       wait_until_addClientButton_visible(wait: 10)
        home_page.addClientButton.click
    end
end