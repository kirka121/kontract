class MembersController < ApplicationController
	respond_to :json


	def index
		@members = Member.all

		render json: @members

	end
end
