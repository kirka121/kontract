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
	$("#setting_site_copyright").focusout -> 
		do validate('setting_site_copyright')
		return
	$("#setting_admin_email").focusout -> 
		do validate('setting_admin_email')
		return
	$("#setting_booking_email").focusout -> 
		do validate('setting_booking_email')
		return
	$("#setting_registration_mode").focusout -> 
		do validate('setting_registration_mode')
		return
	$(".registrationmode").click ->
		$(".registrationmode").addClass("active").not(this).removeClass("active");
		$("#setting_registration_mode").attr("value", this.value);
		return

$(document).ready(ready)

$(document).on 'page:receive', ->
	tinymce.remove()