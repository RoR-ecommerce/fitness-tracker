require 'spec_helper'

describe TracksController do
  before do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "#new" do
    before { get :new }

    it { response.should be_success }
    it { response.should render_template("new") }
  end

  describe "#create" do
    before do
      post :create, track: { program_id: FactoryGirl.create(:program).id }
    end

    it { response.should redirect_to assigns(:track) }
  end

  describe "#show" do
    before do
      get :show, id: FactoryGirl.create(:track).id
    end

    it { response.should be_success }
    it { response.should render_template(:show) }
  end
end
