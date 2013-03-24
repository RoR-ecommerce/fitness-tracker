class Users::PasswordsController < Devise::PasswordsController
  private

  def resource_params
    params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
  end
end
