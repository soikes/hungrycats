# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#feeding_loader").hide()
  #$("#remaining_container").hide()

  $("#feed_button").on("click", (e) ->
    $("#feeding_loader").show()
   )
