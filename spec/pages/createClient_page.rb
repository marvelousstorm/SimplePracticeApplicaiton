class CreateClientPage < SitePrism::Page
    element :createClienttitle, 'h4#side-flyout-title'
    def client_type_input(client_type)
        find("input[value='#{client_type}']")
    end
    element :firstNameInput, 'input[id^="firstName"]'
    element :lastNameInput, 'input[id^="lastName"]'
    element :preferredNameInput, 'input#nickname'
    element :month_select, 'select[name="month"]'
    element :day_select, 'select[name="day"]'
    element :year_select, 'select[name="year"]'
    def select_month(month)
        month_select.select(month)
    end
    def select_day(day)
        day_select.select(day)
    end
    def select_year(year)
        year_select.select(year)
    end
    def client_type_input(client_status)
        find("input[value='#{client_status}']")
    end
    element :addEmailButton, 'button.button', text: 'Add email'
    element :addEmailInput, 'input[name="email"]'
    def add_email_button_with_text(email_type)
        find('button.button', text: text)
    end
    element :addPhoneButton, 'button.button', text: 'Add phone'
    element :addPhoneInput, 'input[name="phone"]'
    element :continueButton, 'button.button', text: 'Continue'
end