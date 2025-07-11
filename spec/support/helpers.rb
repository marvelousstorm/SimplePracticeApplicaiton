require_relative '../pages/login_page'
require_relative '../pages/home_page'

module Helpers
  def login(user, password)
    login_page = LoginPage.new
    home_page = HomePage.new
    login_page.load
    expect(login_page).to be_loaded
    login_page.username_field.set(user)
    login_page.password_field.set(password)
    login_page.login_button.click
    home_page.load
    expect(home_page).to be_loaded
    home_page.wait_until_spinner_invisible(wait: 10)
    home_page
  end
end