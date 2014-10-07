class Admin::SubsectionsController < ApplicationController
	before_action :check_if_admin
	respond_to :html, :js


	def new
		@subsection = Subsection.new
	end

	def create
		@subsections = Subsection.all
		@subsection = Subsection.create(subsection_params) do |section|
			section.user_id = current_user.id
		end
	end

	def show
		@subsections = Subsection.all
		@subsection = Subsection.find(params[:id])
	end

	def edit
		@subsection = Subsection.find(params[:id])
	end

	def update
		@subsections = Subsection.all
		@subsection = Subsection.find(params[:id])

		@subsection.update_attributes(subsection_params)
	end

	def delete
		@subsection = Subsection.find(params[:subsection_id])
	end

	def destroy
		@subsections = Subsection.all
		@subsection = Subsection.find(params[:id])

		@subsection.destroy	
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end

		def subsection_params
			params.require(:subsection).permit(:title, :active)
		end
end