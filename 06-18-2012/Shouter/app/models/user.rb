class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_many :shouts
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
