require 'site_prism'

class HomePage < SitePrism::Page
    set_url '/calendar/appointments'
    element :spinner, 'div[class="div.swal2-container.swal2-backdrop-show"]'
    element :logoLink, 'a[class*="logo"]'
    element :createButton, 'button.create'
    element :addClientButton, 'button.button-link', text: 'Create client'
    element :searchClientInput, 'input[placeholder="Search clients"]'
    element :notNowButton, 'button', text: 'Not now'
    def click_create_button
        # wait_until_spinner_invisible
        # wait_until_spinner_disappears
        timezoneModalPresent
        wait_until_createButton_visible
        createButton.click
    end
    def click_add_client_button
        timezoneModalPresent
        wait_until_addClientButton_visible
        addClientButton.click
    end
    def timezoneModalPresent
        if has_spinner?
            notNowButton.click
        end
    end
    # def wait_until_spinner_disappears(timeout = 40)
    #     has_no_spinner?(wait: timeout)
    # end
end