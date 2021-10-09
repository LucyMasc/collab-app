require "rails_helper"
# require "factory_bot"

RSpec.describe 'Login', type: :feature do
  # You should be using pure Capybara helpers here

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    # starting from the homepage
    user = FactoryBot.create(:user)
    visit root_path
    click_link 'Login'
    # find('#login', visible: false).click is also accepted above
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    # find below same goal of the click_link 'Login', but fin is for css selectors
    find('#login2', visible: false).click
    # expect(page).to have_current_path(root_path)
    expect(page).to have_text 'Signed in successfully'
    # expect(page).to have_selector '#user-settings'
  end
end
