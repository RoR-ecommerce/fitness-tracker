require 'spec_helper'

describe WorkoutsController do
  before do
    sign_in FactoryGirl.create(:user)
    @track = FactoryGirl.create(:track, :in_progress, program: FactoryGirl.create(:program_with_steps))
  end

  describe "#create" do
    context "with success" do
      before do
        post :create, track_id: @track.id, workout: {emotion: 3, intensity: 4, sweat: 5, notes: "something or other"}
      end

      it { expect(response).to redirect_to(@track) }
    end

    context "failed" do
      before do
        post :create, track_id: @track.id, workout: {emotion: nil, intensity: nil, sweat: nil}
      end

      it { expect(response).to be_success }
      it { expect(response).not_to be_redirect }
      it { expect(response).to render_template("tracks/show")}
    end
  end
end
