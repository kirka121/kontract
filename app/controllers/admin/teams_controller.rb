class Admin::TeamsController < ApplicationController
	before_action :check_if_admin

	def index

	end
	def edit
		
	end
	def destroy

	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end
end