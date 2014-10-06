# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$(".owl-carousel").owlCarousel
		navigation: false
		autoPlay: true
		pagination: false
		singleItem: true

	skrollr.init().refresh();

$(document).ready(ready)