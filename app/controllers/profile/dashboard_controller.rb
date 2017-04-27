class Profile::DashboardController < ApplicationController
  before_action :authenticate_user!
  layout 'frontend'
  def index
    @welcome = "Welcome to User Dashboard"
    @user = current_user
  end
end
