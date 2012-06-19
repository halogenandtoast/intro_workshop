class ShoutsController < ApplicationController
  def index
    @shouts = Shout.current
    @shout = Shout.new
  end

  def create
    shout = Shout.new(params[:shout])
    shout.save
    redirect_to shouts_url
  end
end
