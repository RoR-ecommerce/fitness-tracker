class WorkoutsController < ApplicationController
  before_filter :set_track

  def create
    workout = @track.next_step
    workout.attributes = workout_params
    if workout.save
      redirect_to(@track)
    else
      render(template: "tracks/show")
    end
  end

  private

  def set_track
    @track = Track.find(params[:track_id])
  end

  def workout_params
    params.require(:workout).permit(
      :emotion, :intensity, :notes, :sweat, :step, :track
    )
  end
end
