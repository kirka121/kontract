class SpController < ApplicationController

	def index
		@pages = Subpage.all
	end
end
