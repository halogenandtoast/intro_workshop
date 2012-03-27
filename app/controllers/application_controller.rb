class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.find(cookies[:user_id])
  end
  helper_method :current_user

end
