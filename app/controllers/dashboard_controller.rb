class DashboardController < ApplicationController
  before_filter :authenticate_user!, :except => [:login, :logout]
  def index

  end
end
