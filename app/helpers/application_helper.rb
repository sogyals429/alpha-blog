module ApplicationHelper
  def gravater_for(user,options={size:80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravater_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravater_url,alt:user.username,class: "img-circle")
  end
end
