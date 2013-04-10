class MeasurementsController < ApplicationController
  before_filter :set_track

  def create
    measurement = @track.next_step
    measurement.attributes = measurement_params
    if measurement.save
      redirect_to @track
    else
      render template: "tracks/show"
    end
  end

  private

  def set_track
    @track = Track.find params[:track_id]
  end

  def measurement_params
    params.require(:measurement).permit(
      :arms, :chest, :hips, :thighs, :waist, :weight, :track, :step
    )
  end
end
