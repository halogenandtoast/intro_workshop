class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if cookies[:user_email]
      @current_user ||= User.find_by_email(cookies.signed[:user_email])
    end
  end
  helper_method :current_user
end
