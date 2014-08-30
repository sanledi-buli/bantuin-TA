class DashboardController < ApplicationController
  before_filter :check_authentication, :except => [:login, :logout]

  def index
  end
end
