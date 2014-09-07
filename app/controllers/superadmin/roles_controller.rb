class Superadmin::RolesController < ApplicationController
  before_filter :authenticate_user!, :setup_view

  def index
    
  end

  private

  def setup_view
    @current_page = { parent: 'Roles', child: 'Roles Overview', icon: 'fa fa-group' }
  end
end
