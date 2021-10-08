require "rails_helper"
require "factory_bot"

RSpec.describe 'Login', type: :feature do
  # You should be using pure Capybara helpers here
  scenario 'user navigates to the login page and succesfully logs in' do
    user = FactoryBot.create(:user)
    visit root_path
    # find('#login', visible: false).click
    click_link 'Login'
    # find('#login', visible: false).click
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    find('#login2', visible: false).click
    # expect(page).to have_current_path(root_path)
    expect(page).to have_text 'Signed in successfully'
    # expect(page).to have_selector '#user-settings'
  end
end
