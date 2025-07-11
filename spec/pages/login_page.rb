require 'site_prism'

class LoginPage < SitePrism::Page
    set_url '/'
    element :username_field, '#user_email'
    element :password_field, '#user_password'
    element :login_button, '#submitBtn'
end