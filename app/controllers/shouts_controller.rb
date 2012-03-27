class ShoutsController < ApplicationController
  def index
    @shout = Shout.new
    @shouts = Shout.current.includes(:user)
  end

  def create
    @shout = current_user.shouts.new(params[:shout])
    if @shout.save
      redirect_to shouts_path, :notice => "Shouted!"
    else
      @shouts = Shout.current
      render :action => "index"
    end
  end

end
