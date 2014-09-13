class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	def after_sign_in_path_for(resource)
		admin_path
	end

	def generate_error_message(messages)
		result = ''
		messages.each do |msg|
			result += msg.to_s + ". "
		end
		result
	end
end
