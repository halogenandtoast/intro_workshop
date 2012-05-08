class User < ActiveRecord::Base
  has_many :shouts
  attr_accessible :email
  validates :email, uniqueness: true, format: { with: /\A.+@.+\..+\z/ }
end
