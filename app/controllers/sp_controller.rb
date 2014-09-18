class SpController < ApplicationController

	def index
		@pages = Subpage.all
	end

	def show
		@page = Subpage.find(params[:id])


	end
end
