# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".alert").slideDown()
  
  setTimeout -> 
    $(".alert.success").slideUp()
  , 7000
  
  setTimeout -> 
    $(".alert.error").slideUp()
  , 3000
