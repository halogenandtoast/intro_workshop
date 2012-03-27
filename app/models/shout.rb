class Shout < ActiveRecord::Base
  belongs_to :user
  # scope :current, order("created_at DESC")

  def self.current
    order("created_at DESC")
  end
end
