require 'rails_helper'

RSpec.feature 'login and logout' do
  background do
    User.create!(
      username: 'tanaka',
      email: 'foo@example.com',
      password: '123456')
  end
  scenario 'can login' do
    visit login_path
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '123456'
    click_button ('Log in')
    expect(page).to have_content 'Logged in successfully'
  end
end
