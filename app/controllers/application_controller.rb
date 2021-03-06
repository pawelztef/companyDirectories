class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 
  layout 'landing'

  def after_sign_in_path_for(resources)
    if current_user
      user_path(:id)
    elsif current_admin
      admin_dashboard_index_path
    end
  end
end
