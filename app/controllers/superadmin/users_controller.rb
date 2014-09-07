class Superadmin::UsersController < ApplicationController
  before_filter :authenticate_user!, :setup_view

  def index
    
  end

  private

  def setup_view
    @current_page = { parent: 'Users', child: 'Users Overview', icon: 'fa fa-user' }
  end
end
