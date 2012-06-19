class Shout < ActiveRecord::Base
  attr_accessible :body

  def self.current
    order("created_at DESC")
  end

end
