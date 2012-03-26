class ShoutsController < ApplicationController
  def index
    @shout = Shout.new
    @shouts = Shout.all
  end

  def create
    shout = Shout.new(params[:shout])
    shout.save
    redirect_to shouts_path
  end
end
