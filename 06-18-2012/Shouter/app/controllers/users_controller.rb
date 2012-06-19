class UsersController < ApplicationController
  def new # SHOW THE FORM TO THE USER
    @user = User.new
  end

  def create # SAVE THE FORM DATA TO THE DATABASE

  end
end
