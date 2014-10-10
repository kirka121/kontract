module ApplicationHelper

	def display_carousel
		result = false

		if yield_site_settings.carousel_enabled
			result = true
		end
		
		if yield_site_settings.carousel_mode == 2
			if !(controller_name == 'home' && params[:action] == 'index')
				result = false
			end
		end

		return result
	end

	def test
		return controller_name + " | " + params[:action]
	end

	def display_more_than_one_image
		if yield_site_settings.carousel_mode != 3 && yield_site_settings.carousel_mode != 4
			return true
		end
	end


	def yield_site_settings
		return Setting.first
	end

	def yield_site_subpages
		return Subpage.all
	end

	def yield_site_sections
		return Subsection.all
	end

	def display_section?(section)
		active = false

		if section.enabled && section.subpages.count > 0
			section.subpages.each do |page|
				if page.active
					active = true
				end
			end
		end

		return active
	end

	def randomized_background_image
		string = "assets/elegant_backgrounds/Elegant_Background-"
		digit = rand(1..20)
		#images = ["assets/foo.jpg", "assets/random.jpg", "assets/super_random"]
		#images[rand(images.size)]
		return string+digit.to_s+'.jpg'
	end

	def form_alert(string)
		mystring = "<div class='alert alert-info alert-dismissable'>" 
		mystring += image_tag("popupalertimage.png", width: '40px', height: '40px', id: 'image')
		mystring += "<span class='header'>" + "Alert: " +"</span>"
		mystring += "<span class='content'>" + string +"</span>"
		mystring += "<button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_warning(string)
		mystring = "<div class='alert alert-warning alert-dismissable'>" 
		mystring += image_tag("warningicon.png", width: '40px', height: '40px', id: 'image')
		mystring += "<span class='header'>" + "Warning: " +"</span>"
		mystring += "<span class='content'>" + string +"</span>"
		mystring += "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_errors(string)
		mystring = "<div class='alert alert-danger alert-dismissable'>" 
		mystring += image_tag("crossfailureimage.png", width: '40px', height: '40px', id: 'image')
		mystring += "<span class='header'>" + "Error: " +"</span>"
		mystring += "<span class='content'>" + string +"</span>"
		mystring += "<button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_success(string)
		mystring = "<div class='alert alert-success alert-dismissable'>" 
		mystring += image_tag("checkmarksuccessimage.png", width: '40px', height: '40px', id: 'image')
		mystring += "<span class='header'>" + "Success: " +"</span>"
		mystring += "<span class='content'>" + string +"</span>"
		mystring += "<button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button>"
		mystring += "</div>"
		return mystring.html_safe
	end
end
