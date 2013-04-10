require 'spec_helper'

describe 'Login' do
  before(:each) do
    @user = FactoryGirl.build(:user)

    OmniAuth.config.mock_auth[:ufc] = OmniAuth::AuthHash.new({
      provider: @user.provider,
      uid: @user.uid,
      info: { email: @user.email }
    })
  end

  it 'displays home page after successful login' do
    visit   user_omniauth_authorize_path(:ufc)

    expect(page).to have_text("Logged in as #{@user.email}")
  end
end
