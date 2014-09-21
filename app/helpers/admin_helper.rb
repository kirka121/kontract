module AdminHelper

	def registration_options
		[
      		['Open', 1],
      		['Require email confirmation', 2],
      		['Closed', 3]
      	]
	end

	def carousel_modes
		[
			['Always on', 1],
			['Always off', 2],
			['On home page only', 3]
		]
	end

	def carousel_transitions
		[
			['Swipe', 1],
			['Fade', 2]
		]
	end

	def header_modes
		[
			['Normal', 1],
			['Fixed at top', 2],
			['Fixed at top, fading', 3]
		]
	end

	def footer_modes
		[
			['Normal', 1],
			['Fixed at bottom', 2],
			['Fixed at bottom, fading', 3]
		]
	end
end
