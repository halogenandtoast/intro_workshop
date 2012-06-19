require 'digest/md5'

module UsersHelper
  def gravatar user, size = 50
    hash = Digest::MD5.hexdigest(user.email.downcase)
    image_tag "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end
end
