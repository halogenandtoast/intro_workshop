class Shout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body
  validates :body, presence: true

  def self.current
    order("created_at DESC")
  end
end
