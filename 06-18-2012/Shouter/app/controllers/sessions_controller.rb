class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user
      cookies.signed.permanent[:user_email] = user.email
    end
    redirect_to shouts_path
  end

  def destroy
    cookies.delete(:user_email)
    redirect_to shouts_path
  end
end

