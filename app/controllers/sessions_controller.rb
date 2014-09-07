class SessionsController < Devise::SessionsController
  def new
    super
  end

  def create  
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if !session[:return_to].blank?
      redirect_to session[:return_to]
      session[:return_to] = nil
    else
      session[:current_user] = current_user!
      respond_with resource, :location => after_sign_in_path_for(resource)
    end
  end

  private

  def current_user!
    unless first_name_nil?
      unless last_name_nil?
        return [current_user.first_name.capitalize,current_user.last_name.capitalize].join(' ')
      end
    end
    return current_user.username
  end

  def first_name_nil?
    current_user.first_name == nil ? true : false
  end

  def last_name_nil?
    current_user.last_name == nil ? true : false
  end
end
