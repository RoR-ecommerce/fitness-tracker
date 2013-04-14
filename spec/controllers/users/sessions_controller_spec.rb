require 'spec_helper'

describe Users::SessionsController do

  describe "#new" do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :new
    end
    it { expect(response).to redirect_to(user_omniauth_authorize_path(:ufc))}
  end
end
