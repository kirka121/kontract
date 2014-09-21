# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$(".owl-carousel").owlCarousel
		navigation: false
		pagination: false
		autoPlay: true
		singleItem: true
		lazyLoad: true
	skrollr.init().refresh();

$(document).on "page:change", ->
	do ready