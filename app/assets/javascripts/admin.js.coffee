# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$("#main_settings_trigger").click().addClass("active");
	$(".mainsettings").click ->
	  	$(".mainsettings").addClass("active").not(this).removeClass "active"
	return


$(document).ready(ready)

$(document).on 'page:receive', ->
	tinymce.remove()
