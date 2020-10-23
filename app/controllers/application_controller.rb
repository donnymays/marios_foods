class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :authenticate_admin

  def authenticate_admin!
    current_user && current_user.admin
  end 

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({roles: [] },:admin, :email, :name, :password, :password_confirmation)
    end
  end
end

