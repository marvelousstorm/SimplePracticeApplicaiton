require 'site_prism'

class LoginPage < SitePrism::Page
    element :username_field, '#user-name'
    element :password_field, '#password'
    element :login_button, 'input[id="login-button"]'
end