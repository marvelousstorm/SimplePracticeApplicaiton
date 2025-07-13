require 'site_prism'

class HomePage < SitePrism::Page
    set_url '/calendar/appointments'
    element :spinner, 'div[class*="backdrop-show"]'
    element :logoLink, 'a[class*="logo"]'
    element :createButton, 'button.create'
    element :addClientButton, 'button.button-link', text: 'Create client'
    element :searchClientInput, 'input[placeholder="Search clients"]'
    element :notNowButton, 'button', text: 'Not now'
    def click_create_button
        timezoneModalPresent if ENV['CI'] == 'true'
        wait_until_createButton_visible
        createButton.click
    end
    def click_add_client_button
        timezoneModalPresent if ENV['CI'] == 'true'
        wait_until_addClientButton_visible
        addClientButton.click
    end
    def timezoneModalPresent
        if has_spinner?(wait: 10)
            notNowButton.click
        end
    end
end