class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    cookies[:user_id] = user.id
    redirect_to shouts_path
  end
end
