class Users::SessionsController < Devise::SessionsController

  def new
    redirect_to user_omniauth_authorize_path(:ufc)
  end
end
