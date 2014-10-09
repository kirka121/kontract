class Admin::SettingsController < ApplicationController
	before_action :check_if_admin
	respond_to :html, :js

	def index
		
	end

	def edit
		@settings = Setting.find(1)
	end

	def edit_carousel
		@settings = Setting.find(1)
	end

	def update
		@setting = Setting.find(1)
		if @setting.update_attributes(setting_params)
			flash.now[:form_success] = "Settings have been updated."
		else
			flash.now[:form_errors] = "Settings have NOT been updated, check for errors."
		end
	end

	def update_carousel
		@setting = Setting.find(1)
		if @setting.update_attributes(setting_carousel_params)
			flash.now[:form_success] = "Carousel settings have been updated."
		else
			flash.now[:form_errors] = "Carousel settings have NOT been updated, check for errors."
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

		def setting_carousel_params
			params.require(:setting).permit(:carousel_enabled, :carousel_mode, :carousel_transition)
		end
end
