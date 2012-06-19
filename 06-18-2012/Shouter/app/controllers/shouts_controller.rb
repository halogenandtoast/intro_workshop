class ShoutsController < ApplicationController
  before_filter :authenticate, only: [:create]

  def index
    @shouts = Shout.current
    @shout = Shout.new
  end

  def create
    shout = current_user.shouts.new(params[:shout])
    if shout.save
      redirect_to shouts_url, notice: "Shouted!"
    else
      redirect_to shouts_url, notice: "Shout can't be blank"
    end
  end
end
