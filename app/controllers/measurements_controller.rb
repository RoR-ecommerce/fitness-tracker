class MeasurementsController < ApplicationController

  before_filter :set_track

  def create
    measurement = @track.next_step
    measurement.attributes = params[:measurement]
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

end
