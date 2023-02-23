class RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name)
  end

  protected

  def after_sign_up_path_for(resource)
    # You can choose a specific page to redirect the user to
    # For example, you can redirect the user to the home page:
    root_path
  end
end
