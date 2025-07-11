require_relative 'spec_helper'
require_relative './pages/login_page'

RSpec.describe 'Login Page', type: :feature do
    login_page = LoginPage.new
    before(:each) do
        username = CONFIG['username']
        password = CONFIG['password']
        @home_page = login(username, password)  
    end
    it 'logs in successfully with valid credentials' do
        expect(page).to have_no_css('div.swal2-container.swal2-backdrop-show', wait: 10)
        expect(@home_page).to have_createButton
        @home_page.createButton.click
    end 
end