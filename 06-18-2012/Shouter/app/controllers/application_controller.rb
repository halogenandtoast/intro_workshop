class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    if !signed_in?
      redirect_to(shouts_path)
    end
  end

  def sign_in(user)
    cookies.signed.permanent[:user_email] = user.email
  end

  def current_user
    if cookies[:user_email]
      @current_user ||= User.find_by_email(cookies.signed[:user_email])
    end
  end
  helper_method :current_user

  def signed_in?
    current_user
  end
  helper_method :signed_in?
end
