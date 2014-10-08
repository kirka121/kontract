class ServicesController < ApplicationController
	respond_to :html

	def index
		@services = Service.all
	end
	
end
