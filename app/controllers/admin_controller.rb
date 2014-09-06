class AdminController < ApplicationController

	def index
		if !user_signed_in?
			redirect_to login_path	
		end
	end
end
