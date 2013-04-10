require 'spec_helper'

describe WorkoutsController do
  before { sign_in FactoryGirl.create(:user) }

  describe "#create" do
    context "with success" do
      before do
        @track = FactoryGirl.create(:track, :in_progress, program: FactoryGirl.create(:program_with_steps))
        post :create, track_id: @track.id, workout: {emotion: 3, intensity: 4, sweat: 5, notes: "something or other"}
      end

      it { response.should redirect_to @track }
    end

    context "failed" do
      before do
        track = FactoryGirl.create(:track, :in_progress, program: FactoryGirl.create(:program_with_steps))
        post :create, track_id: track.id, workout: {emotion: nil, intensity: nil, sweat: nil}
      end

      it { response.should be_success }
      it { response.should_not be_redirect }
      it { response.should render_template("tracks/show")}
    end
  end
end
