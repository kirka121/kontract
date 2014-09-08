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

	def form_alert(string)
		mystring = "<div class='alert alert-info alert-dismissable'>" 
		mystring += "<table id='flash_proper_spacing'><tr><td id='picture'>" + image_tag("popupalertimage.png", width: '40px', height: '40px', id: 'image') + "</td>"
		mystring += "<td id='header'><span class='header'>" + "Alert: " +"</span></td>"
		mystring += "<td id='errors'><span class='content'>" + string +"</span></td>"
		mystring += "<td id='button'><button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button></td></tr></table>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_warning(string)
		mystring = "<div class='alert alert-warning alert-dismissable'>" 
		mystring += "<table id='flash_proper_spacing'><tr><td id='picture'>" + image_tag("warningicon.png", width: '40px', height: '40px', id: 'image') + "</td>"
		mystring += "<td id='header'><span class='header'>" + "Warning: " +"</span></td>"
		mystring += "<td id='errors'><span class='content'>" + string +"</span></td>"
		mystring += "<td id='button'><button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button></td></tr></table>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_errors(string)
		mystring = "<div class='alert alert-danger alert-dismissable'>" 
		mystring += "<table id='flash_proper_spacing'><tr><td id='picture'>" + image_tag("crossfailureimage.png", width: '40px', height: '40px', id: 'image') + "</td>"
		mystring += "<td id='header'><span class='header'>" + "Error: " +"</span></td>"
		mystring += "<td id='errors'><span class='content'>" + string +"</span></td>"
		mystring += "<td id='button'><button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button></td></tr></table>"
		mystring += "</div>"
		return mystring.html_safe
	end

	def form_success(string)
		mystring = "<div class='alert alert-success alert-dismissable'>" 
		mystring += "<table id='flash_proper_spacing'><tr><td id='picture'>" + image_tag("checkmarksuccessimage.png", width: '40px', height: '40px', id: 'image') + "</td>"
		mystring += "<td id='header'><span class='header'>" + "Success: " +"</span></td>"
		mystring += "<td id='errors'><span class='content'>" + string +"</span></td>"
		mystring += "<td id='button'><button type='button' class='close' data-dismiss='alert'aria-hidden='true'>&times;</button></td></tr></table>"
		mystring += "</div>"
		return mystring.html_safe
	end
end
