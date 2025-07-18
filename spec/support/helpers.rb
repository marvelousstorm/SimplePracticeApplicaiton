require_relative '../pages/login_page'
require_relative '../pages/home_page'
require_relative '../pages/createClient_page'
require_relative '../pages/client_page'
require_relative '../pages/sidebar_page'

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
    home_page.timezoneModalPresent if ENV['CI'] == 'true'
    home_page
  end
  def createClient(home_page,client)
    home_page.click_create_button
    home_page.click_add_client_button
    create_client_page = CreateClientPage.new
    expect(create_client_page).to have_createClienttitle
    expect(create_client_page.createClienttitle.text).to eq('Create client')
    create_client_page.client_type_input(client['type']).click
    create_client_page.firstNameInput.set(client['firstName'])
    create_client_page.lastNameInput.set(client['lastName'])
    create_client_page.continueButton.click
    client_name = "#{client['firstName']} #{client['lastName']}"
    check_client_created(client_name)
  end
  def check_client_created(client)
    client_page = ClientPage.new
    sidebar_page = SidebarPage.new
    expect(sidebar_page).to have_clients
    sidebar_page.click_clients
    client_page.load
    expect(client_page).to be_loaded
    expect(client_page).to have_searchInput
    client_page.searchInput.set(client)
    expect(client_page.client(client)).to be_visible
  end
  def deactivate_client(client)
    client_page = ClientPage.new
    sidebar_page = SidebarPage.new
    check_client_created(client)
    client_page.clientStatusButton.click
    client_page.changeStatusButton('Inactive').click
  end
end