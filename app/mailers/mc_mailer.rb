class McMailer < ActionMailer::Base
	default from: Setting.find(1).admin_email
	add_template_helper(ApplicationHelper)

	def contactus(email, name, content,proj)
		@name = name
		@email = email
		@content = content
		@proj = proj
		@url  = 'http://www.mc-cm.com'
		mail(to: Setting.find(1).admin_email, subject: '[' + Setting.find(1).site_name+' FEEDBACK] ' + name + " - " + email)
	end

	def invitation(email, user, id, key)
		@user = user
		@email = email
		@id = id
		@key = key
		mail(to: email, subject: 'Membership Invitation')
	end

	def verification(user)
		@email = user.email
		@key = user.activation_key
		@userid = user.id

		mail(to: user.email, subject: 'VERIFICATION]' + user.first_name + " " + user.last_name)
	end
end