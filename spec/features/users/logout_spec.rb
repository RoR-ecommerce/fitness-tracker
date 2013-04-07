require 'spec_helper'

describe 'Logout' do
  it 'redirects to home page after successful logout' do
    login_as FactoryGirl.create(:user)

    # any page with navigation that has logout
    visit root_path
    click_link 'Logout'

    expect(page).to have_text('Signed out successfully.')
    expect(page).to have_link('Login', { href: '/users/auth/ufc' })
  end
end
