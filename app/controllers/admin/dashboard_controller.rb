class Admin::DashboardController < ApplicationController
  layout 'backend'
  before_action :authenticate_admin!
  def index
    @welcome = "Welcome to Admin Dashboard"
    @admin = current_admin
  end
end
