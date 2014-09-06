class Admin::SubpagesController < ApplicationController
	


	def index
		@subpages = Subpage.all
	end

	def edit
		@subpages = Subpage.all
		@subpage_to_edit = @subpages.find(params[:id])
	end

	def destroy

	end
end