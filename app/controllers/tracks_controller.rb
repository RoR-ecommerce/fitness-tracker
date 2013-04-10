class TracksController < ApplicationController

  def new
    @track = Track.new
    respond_with @track
  end

  def create
    @track = current_user.tracks.create params[:track]
    respond_with @track
  end

  def show
    @track = Track.find params[:id]
    respond_with @track
  end

end
