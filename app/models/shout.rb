class Shout < ActiveRecord::Base
  # scope :current, order("created_at DESC")

  def self.current
    order("created_at DESC")
  end
end
