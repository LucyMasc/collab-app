require 'rails_helper'

RSpec.describe 'Signup', type: :feature do
  scenario 'user sucessfully signs up', js: true do
    # starting from homepage
    # user = FactoryBot.create(:user)
    visit root_path
    click_link 'Signup'
    # save_and_open_screenshot
    fill_in 'Name', with: 'Test1'
    fill_in 'Email', with: 'test1@test.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign up'
    expect(page).to have_selector '#user-settings'
    save_and_open_screenshot
  end
end
