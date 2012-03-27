class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    cookies.signed.permanent[:user_id] = user.id
    redirect_to shouts_path
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to shouts_path
  end
end
