class Admin::SettingsController < ApplicationController
	before_action :check_if_admin

	def edit
		
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end
end