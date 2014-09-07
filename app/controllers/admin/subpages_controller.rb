class Admin::SubpagesController < ApplicationController
	before_action :check_if_admin

	def index
		@subpages = Subpage.all
	end

	def edit
		@subpages = Subpage.all
		@subpage_to_edit = @subpages.find(params[:id])
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