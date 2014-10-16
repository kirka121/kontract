class HomeController < ApplicationController
	respond_to :html, :js

	def index
		#arduino connectivity
		# require 'dino'
		# if !defined? bored
		# 	board = Dino::Board.new(Dino::TxRx.new)
		# end

		# if !defined? led
		# 	led = Dino::Components::Led.new(pin: 13, board: board)
		# end

		# led.off
	end

	def home

	end

	def contact
		@feedbacks = Feedback.new
	end

	def send_feedback	
		@feedback = Feedback.new

		if @feedback.sav(efeedback_params)
			if McMailer.contactus(feedback_params).deliver
				flash.now[:form_success] = "Your E-Mail has been sent."
			else
				flash.now[:form_errors] = "Your E-Mail failed to send."
			end
		else
			flash.now[:form_errors] = "Your feedback failed to save."
		end
	end

	def services

	end

	private
		def feedback_params
			params.require(:feedback).permit(:name, :email, :proj_name, :content)
		end
end
