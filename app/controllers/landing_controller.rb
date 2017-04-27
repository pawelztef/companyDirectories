class LandingController < ApplicationController
  layout 'landing'
  def index
    @welcome = "Welcome to landing page"
  end
end
