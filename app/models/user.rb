class User < ActiveRecord::Base
  has_many :shouts
end
