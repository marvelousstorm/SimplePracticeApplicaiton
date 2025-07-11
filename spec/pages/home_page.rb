require 'site_prism'

class HomePage < SitePrism::Page
    set_url '/calendar/appointments'
    element :logoLink, 'a[class*="logo"]'
    element :createButton, 'button.create'
    element :addClientButton, 'button.button-link', text: 'Create Client'
end