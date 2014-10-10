class McMailer < ActionMailer::Base
	include ApplicationHelper
	default from: yield_site_settings.admin_email
	

	def contactus(email, name, content,proj)
		@name = name
		@email = email
		@content = content
		@proj = proj
		@url  = 'http://www.kirka.ca'
		mail(to: yield_site_settings.admin_email, subject: '[' + yield_site_settings.site_name+' FEEDBACK] ' + name + " - " + email, from: email)
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