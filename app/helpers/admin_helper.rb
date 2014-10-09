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
			['Everywhere', 1],
			['On homepage only', 2],
			['First image only', 3],
			['First image only, on homepage only', 4]
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
			['Fixed at bottom', 2]
		]
	end
end
