class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # You can choose a specific page to redirect the user to
    # For example, you can redirect the user to the home page:
    root_path
  end
end
