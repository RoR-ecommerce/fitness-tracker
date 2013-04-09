class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  force_ssl

  def ufc
    @user = User.from_omniauth!(request.env["omniauth.auth"])

    if @user.persisted?
      set_flash_message(:notice, :success, kind: "UFCFit") if is_navigational_format?
      sign_in_and_redirect(@user, event: :authentication)
    else
      redirect_to root_url
    end
  end
end
