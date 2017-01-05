module MessagesHelper
  def recipients_options
   options_for_select(User.all.map { |user| [user.name, user.id, { 'data-img-src' => gravatar_image_url(user.email, size: 50) }] })
 end
end
