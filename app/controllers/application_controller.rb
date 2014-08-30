class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource

  def check_authentication
    unless user_signed_in?
      redirect_to :new_user_session
    end
  end

  private

  def after_sign_in_path_for(resource)
    set_session_users(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def layout_by_resource
    devise_controller? ? 'login_layout' : 'application'
  end
end