require 'rails_helper'

RSpec.describe 'Logout', type: :feature do
  scenario 'user sucessfully logs out', js: true do
    # user needs to be logged in 1st
    user = FactoryBot.create(:user)
    login_as(user)
    # user is on the homepage
    visit root_path
    # save_and_open_screenshot
    # User clicks on the dropdown button
    find('#user-settings').click
    click_link 'Log out'
    save_and_open_screenshot
    # expect(page).to have_selector('nav a', text: 'Login')
    expect(page).to have_text "Login"
  end
end
