require 'rails_helper'

RSpec.describe 'Visit a single post', type: :feature do
  scenario 'user visit a single post from the homepage', js: true do
    # user = FactoryBot.create(:user)
    post = FactoryBot.create(:post)
    visit root_path
    click_link "I'm interested"
    # expect(page).to have_text "Posted by"
    expect(page).to have_selector(".posted-by", text: "Posted by #{post.user.name}")
    # save_and_open_screenshot
  end
end
