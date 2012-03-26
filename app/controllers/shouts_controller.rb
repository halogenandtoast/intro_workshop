class ShoutsController < ApplicationController
  def index
    @shout = Shout.new
  end
end
