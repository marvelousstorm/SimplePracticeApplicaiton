require_relative 'spec_helper'
require_relative './pages/login_page'

RSpec.describe 'Login Page', type: :feature do
    login_page = LoginPage.new
    before(:each) do
        base_url = CONFIG['base_url']
        username = CONFIG['username']
        password = CONFIG['password']
        login(base_url, username, password)  
    end
    it 'logs in successfully with valid credentials' do
     
    end 
end