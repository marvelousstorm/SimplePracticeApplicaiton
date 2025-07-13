require_relative 'spec_helper'
require_relative './pages/login_page'

RSpec.describe 'Login Page', type: :feature do
    login_page = LoginPage.new
    before(:all) do
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
    end 
    # after(:all) do
    #     username = CONFIG['username']
    #     password = CONFIG['password']
    #     home_page = login(username, password)
    #     client_name = "#{@client['firstName']} #{@client['lastName']}"
    #     deactivate_client(client_name)
    # end
end