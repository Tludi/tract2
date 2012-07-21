# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $(".slidingDiv").hide()
  $(".show_hide").show()
 
  $('.show_hide').click ->
    $(".slidingDiv").slideToggle()
