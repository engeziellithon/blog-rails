class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :password, :password_confirmation, :current_password, :avatar) }
  end

end


