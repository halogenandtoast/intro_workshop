class ShoutsController < ApplicationController
  def index
    @shout = Shout.new
    @shouts = Shout.current
  end

  def create
    shout = current_user.shouts.new(params[:shout])
    shout.save
    redirect_to shouts_path
  end

end
