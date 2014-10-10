class HomeController < ApplicationController


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

	end

	def send_feedback
		email = params["/contact"][:email]
		name = params["/contact"][:name]
		content = params["/contact"][:content]
		proj_name = params["/contact"][:proj_name]

		if McMailer.contactus(email,name,content,proj_name).deliver
			flash[:form_success] = "Your E-Mail has been sent."
			render 'contact'
		else
			flash[:form_errors] = "Your E-Mail failed to send."
			render 'contact'
		end
	end

	def services

	end
end
