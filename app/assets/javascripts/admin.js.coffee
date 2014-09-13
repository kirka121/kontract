# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
validate = (elementid)->
	judge.validate document.getElementById(elementid),
		valid: (element) ->
			element.style.border = "1px solid green"
			return

		invalid: (element, messages) ->
			element.style.border = "1px solid red"
			return

ready = ->
	$('input.table_switch_checkbox').bootstrapSwitch();
	$("#setting_site_name").focusout -> 
		do validate('setting_site_name')
		return
	$("#setting_site_title").focusout -> 
		do validate('setting_site_title')
		return


$(document).ready(ready)
$(document).on('page:load', ready)