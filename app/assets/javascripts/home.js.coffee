# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




ready = ->
	$(".owl-carousel").owlCarousel({
		navigation : true, 
		slideSpeed : 300,
		paginationSpeed : 400,
		singleItem:true

		
		items : 1, 
		itemsDesktop : false,
		itemsDesktopSmall : false,
		itemsTablet: false,
		itemsMobile : false
	});

$(document).ready(ready)
$(document).on('page:load', ready)