class Admin::SubpagesController < ApplicationController
	before_action :check_if_admin

	def index
		@subpages = Subpage.all
	end

	def new
		@subpages = Subpage.all
		@subpage = Subpage.new
	end

	def create
		@subpages = Subpage.all
		subpage = Subpage.new

		subpage.attributes = subpage_params
		subpage.user = current_user.email

		if subpage.save!
			flash.now[:form_success] = 'Supbage has been created.'
		else
			flash.now[:form_warning] = generate_error_message(subpage.errors.full_messages)
		end

		render 'admin/subpages/index'

	end

	def edit
		@subpages = Subpage.all
		@subpage_to_edit = @subpages.find(params[:id])
	end

	def update
		subpage = Subpage.find(params[:id])

		if subpage.update_attributes(subpage_params)
			flash.now[:form_success] = 'Supbage has been updated.'
		else
			flash.now[:form_warning] = generate_error_message(subpage.errors.full_messages)
		end

		@subpages = Subpage.all
		render 'admin/subpages/index' 
	end

	def destroy
		subpage = Subpage.find(params[:id])

		if subpage.destroy!
			flash.now[:form_success] = 'Supbage has been deletes.'
		else
			flash.now[:form_warning] = generate_error_message(subpage.errors.full_messages)
		end

		@subpages = Subpage.all
		render 'admin/subpages/index'
	end

	private
		def check_if_admin
			if !user_signed_in?
				redirect_to login_path	
			end
		end

		def subpage_params
			params.require(:subpage).permit(:title, :content)
		end
end
