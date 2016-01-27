class RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :user_location, :email, :phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :user_location, :email, :phone, :current_password, :user_img, :password, :password_confirmation)
  end
end
