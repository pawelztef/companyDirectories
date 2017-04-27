class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  layout 'frontend'
  
  def index
  end
  
  def show
    @welcome = "Welcome to User Dashboard"
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

private
  def set_user
    @user = current_user
  end
  
end
