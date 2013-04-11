require 'spec_helper'

describe ApplicationController do

  describe "#route" do
    context "when user logged out" do
      it "should redirect to root url" do
        get :route
        expect(response).to redirect_to(root_url)
      end
    end

    context "with logged in user" do
      before(:each) { sign_in FactoryGirl.create(:user) }

      it "should redirect to new track url" do
        get :route
        expect(response).to redirect_to(new_track_url)
      end
    end
  end
end
