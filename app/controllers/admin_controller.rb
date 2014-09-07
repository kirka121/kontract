class AdminController < ApplicationController
	before_action :check_if_admin

	def index
		
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end
end
