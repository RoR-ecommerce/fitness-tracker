class TracksController < ApplicationController
  respond_to :html

  def new
    @track = Track.new
    respond_with(@track)
  end

  def create
    @track = current_user.tracks.create(track_params)
    respond_with(@track)
  end

  def show
    @track = Track.find(params[:id])
    respond_with(@track)
  end

  private

  def track_params
    params.require(:track).permit(:program_id)
  end
end
