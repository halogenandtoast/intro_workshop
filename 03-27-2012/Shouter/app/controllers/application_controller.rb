class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def current_user
    @current_user ||= User.find(cookies.signed[:user_id]) if cookies[:user_id]
  end
  helper_method :current_user

  def signed_in?
    current_user
  end
  helper_method :signed_in?

end
