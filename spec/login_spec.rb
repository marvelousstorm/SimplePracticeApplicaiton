require_relative 'spec_helper'
require_relative './pages/login_page'

RSpec.describe 'Login Page', type: :feature do
    login_page = LoginPage.new
    before(:all) do
        # env = ENV['TEST_ENV'] || 'stage'
        data = YAML.load_file('spec/fixtures/data.yml')
        @client = data[ENVIRONMENT]['createClientTest']['client']
    end
    before(:each) do
        username = CONFIG['username']
        password = CONFIG['password']
        @home_page = login(username, password)  
    end
    it 'Succesfully create client' do
        createClient(@home_page,@client)
        puts "Client type: #{@client['type']}"
        # expect(@home_page).to have_createButton
        # @home_page.createButton.click
        # @home_page.addClientButton.click
    end 
end