class ShoutsController < ApplicationController
  before_filter :authorize, only: [:create]

  def index
    @shouts = Shout.current.paginate(page: params[:page], per_page: 10)
    @shout = Shout.new
  end

  def create
    @shout = current_user.shouts.new(params[:shout])
    if @shout.save
      redirect_to shouts_url, notice: "Shouted!"
    else
      @shouts = Shout.current
      render action: "index"
    end
  end
end
