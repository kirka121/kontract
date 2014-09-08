class HomeController < ApplicationController

	def index
		flash.now[:form_warning] = "testing a flash"
	end
	def home

	end

	def contact

	end
	def services

	end
end
