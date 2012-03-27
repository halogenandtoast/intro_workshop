module UsersHelper
  def gravatar(user)
    digest = Digest::MD5.hexdigest(user.email)
    image_tag "http://gravatar.com/avatar/#{digest}"
  end
end
