class Admin::SubpagesController < ApplicationController
	before_action :check_if_admin
	respond_to :html, :js

	def index
		@subpages = Subpage.all
		@subsections = Subsection.all
	end

	def new
		@subpages = Subpage.all
		@subpage = Subpage.new

		@sections = Subsection.all
	end

	def create
		@subpages = Subpage.all
		@subpage = Subpage.create(subpage_params) do |page|
			page.user_id = current_user.id
		end
	end

	def show
		@subpages = Subpage.all
		@subpage = Subpage.find(params[:id])
	end

	def edit
		@subpage = Subpage.find(params[:id])

		@sections = Subsection.all
	end

	def update
		@subpages = Subpage.all
		@subpage = Subpage.find(params[:id])

		@subpage.update_attributes(subpage_params)
	end

	def delete
		@subpage = Subpage.find(params[:subpage_id])
	end

	def destroy
		@subpages = Subpage.all
		@subpage = Subpage.find(params[:id])

		@subpage.destroy	
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end

		def subpage_params
			params.require(:subpage).permit(:title, :content, :link_header, :active, :subsection_id)
		end
end
