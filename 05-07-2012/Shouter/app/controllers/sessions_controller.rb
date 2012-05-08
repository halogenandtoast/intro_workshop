class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user
      sign_in(user)
      redirect_to shouts_path, notice: "Signed in successfully"
    else
      redirect_to shouts_path, notice: "Could not sign you in"
    end
  end

  def destroy
    cookies.delete :user_id
    redirect_to shouts_path, notice: "Signed out"
  end
end
