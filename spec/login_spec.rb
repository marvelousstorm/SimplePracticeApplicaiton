require_relative 'spec_helper'
require_relative '../pages/login_page'

RSpec.describe 'Login Page', type: :feature do
    login_page = LoginPage.new
    it 'logs in successfully with valid credentials' do
        visit CONFIG['base_url']
        login_page.username_field.set(CONFIG['username'])
        login_page.password_field.set(CONFIG['password'])
        login_page.login_button.click
    end 
end