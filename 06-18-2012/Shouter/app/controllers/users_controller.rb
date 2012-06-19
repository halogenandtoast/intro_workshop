class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(params[:user])
    user.save
    redirect_to shouts_url
  end
end
