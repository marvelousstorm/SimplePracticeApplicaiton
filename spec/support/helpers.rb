require_relative '../pages/login_page'
require_relative '../pages/home_page'
require_relative '../pages/createClient_page'

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
    home_page.wait_until_spinner_invisible
    home_page
  end
  def createClient(home_page,client)
    expect(home_page).to have_createButton
    home_page.createButton.click
    home_page.addClientButton.click
    create_client_page = CreateClientPage.new
    expect(create_client_page).to have_createClienttitle
    expect(create_client_page.createClienttitle.text).to eq('Create client')
    create_client_page.client_type_input(client['type']).click
    create_client_page.firstNameInput.set(client['firstName'])
    create_client_page.lastNameInput.set(client['lastName'])
    create_client_page.preferredNameInput.set(client['preferredName'])
    create_client_page.select_month(client['birthDate']['month'])
    create_client_page.select_day(client['birthDate']['day'])
    create_client_page.select_year(client['birthDate']['year'])
    create_client_page.client_type_input(client['status']).click
    create_client_page.addEmailButton.click
    create_client_page.addEmailInput.set(client['contact']['email'])
    create_client_page.addPhoneButton.click
    create_client_page.addPhoneInput.set(client['contact']['phone'])
    create_client_page.continueButton.click
  end
end