class ApplicationController < ActionController::Base
  protect_from_forgery
  ensure_security_headers

  def route
    if track = current_user.tracks.first
      redirect_to track
    else
      redirect_to new_track_url
    end
  end
end
