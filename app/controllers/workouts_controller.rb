class WorkoutsController < ApplicationController

  before_filter :set_track

  def create
    workout = @track.next_step
    workout.attributes = params[:workout]
    if workout.save
      redirect_to @track
    else
      render template: "tracks/show"
    end
  end

  private

  def set_track
    @track = Track.find params[:track_id]
  end

end
