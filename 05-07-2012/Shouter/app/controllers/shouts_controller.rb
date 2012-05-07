class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all
    @shout = Shout.new
  end
end
