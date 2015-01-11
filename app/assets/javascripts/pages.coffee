# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	$("#teacher_label").click ->
		$(this).removeClass("btn-default")
		$(this).addClass("btn-primary")
		$("#student_label").removeClass("btn-primary")
		$("#student_label").addClass("btn-default")
	$("#student_label").click ->
		$(this).removeClass("btn-default")
		$(this).addClass("btn-primary")
		$("#teacher_label").removeClass("btn-primary")
		$("#teacher_label").addClass("btn-default")
		
