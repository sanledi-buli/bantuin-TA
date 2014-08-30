class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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
end