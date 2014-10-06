class HomeController < ApplicationController


	def index
		require 'dino'
		if !defined? bored
			board = Dino::Board.new(Dino::TxRx.new)
		end

		if !defined? led
			led = Dino::Components::Led.new(pin: 13, board: board)
		end

		led.off
	end

	def home

	end

	def contact

	end
	def services

	end

	def arduino_on
		@home = 'test'
		render 'home/index'
	end
end
