require 'spec_helper'

describe '/users/login' do
  it 'displays home page after successful login' do
    user = FactoryGirl.create(:user)

    visit   '/users/login'
    fill_in 'Email',    with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_text('Welcome aboard')
  end

  it 'displays error when no credential submitted' do
    visit '/users/login'
    click_button 'Sign in'

    expect(page).to have_selector('#flash_alert', text: 'Invalid email or password.')
  end
end
