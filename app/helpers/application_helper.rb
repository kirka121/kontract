module ApplicationHelper

	def yield_site_settings
		return Setting.find(1)
	end

	def randomized_background_image
		string = "assets/elegant_backgrounds/Elegant_Background-"
		digit = rand(1..20)
		#images = ["assets/foo.jpg", "assets/random.jpg", "assets/super_random"]
		#images[rand(images.size)]
		return string+digit.to_s+'.jpg'
	end
end
