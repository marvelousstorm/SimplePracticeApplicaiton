require_relative '../pages/login_page'

module Helpers
  def login(baseURL, user, password)
    login_page = LoginPage.new
    visit baseURL
    login_page.username_field.set(user)
    login_page.password_field.set(password)
    login_page.login_button.click
  end
end