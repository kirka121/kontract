class Admin::SettingsController < ApplicationController
	before_action :check_if_admin

	def edit
		@settings = Setting.find(1)
	end

	def update
		setting = Setting.find(1)

		setting.update!(setting_params)


		if setting.save
			flash.now[:form_success] = "Settings have been updated."

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

		def setting_params
			params.require(:setting).permit(:site_name, :site_title, :site_copyright, :admin_email, :booking_email, :registration_mode, :subpages_active, :teams_active, :services_active)
		end
end
