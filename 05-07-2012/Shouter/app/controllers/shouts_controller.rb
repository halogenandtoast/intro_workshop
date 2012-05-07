class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all
  end
end
