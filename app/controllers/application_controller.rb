class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected

  def layout_by_resource
    devise_controller? ? 'login_layout' : 'application'
  end

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:login,:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :password, :remember_me) }
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
end