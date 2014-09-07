class DashboardController < ApplicationController
  before_filter :setup_view, :authenticate_user!, :except => [:login, :logout]
  def index

  end

  private

  def setup_view
    @current_page = { parent: 'Dashboard', child: 'Dashboard Overview', icon: ' fa fa-dashboard' }
  end
end
