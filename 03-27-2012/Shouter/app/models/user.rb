class User < ActiveRecord::Base
  has_many :shouts
  validates :email, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
