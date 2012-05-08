class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if cookies[:user_id]
      @current_user ||= User.find(cookies.signed[:user_id])
    end
  end
  helper_method :current_user

  def signed_in?
    current_user
  end
  helper_method :signed_in?

  def authorize
    if !signed_in?
      redirect_to new_session_url
    end
  end

  def sign_in(user)
    cookies.signed.permanent[:user_id] = user.id
  end
end
