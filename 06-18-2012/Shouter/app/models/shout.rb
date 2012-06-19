class Shout < ActiveRecord::Base
  attr_accessible :body
  belongs_to :user
  validates :body, presence: true

  def self.current
    order("created_at DESC")
  end

end
