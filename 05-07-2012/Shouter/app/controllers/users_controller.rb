class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts.paginate(page: params[:page], per_page: 10)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
      redirect_to shouts_url
    else
      render action: "new"
    end
  end
end
