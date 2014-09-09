class Admin::SettingsController < ApplicationController
	before_action :check_if_admin

	def edit
		@settings = Setting.find(1)
	end

	def update
		setting = Setting.find(1)

		setting.site_name = params[:setting][:site_name]

		if setting.save
			flash.now[:form_success] = "Success"

			@settings = Setting.find(1)
			render 'admin/settings/edit' 
		end
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end
end
