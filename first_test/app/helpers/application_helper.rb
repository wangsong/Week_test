module ApplicationHelper
  def gravatar_for(user, options = { :size => 100 })
		gravatar_image_tag(user.email.downcase, :title => user.name,
		:class => 'gravatar',
		:gravatar => options)
	end
end
