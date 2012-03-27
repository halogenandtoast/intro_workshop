class Shout < ActiveRecord::Base
  belongs_to :user
  validates :body, :presence => true
  # scope :current, order("created_at DESC")

  def self.current
    order("created_at DESC")
  end
end
