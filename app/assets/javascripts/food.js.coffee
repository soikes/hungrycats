# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#feeding_loader").hide()
  $("#remaining_container").hide()
  #$("#remaining").attr('id', 'remaining_hidden')

  $("#feed_button").on("click", ->
    $("#feeding_loader").show()
   )

  $("#feed_button").on("ajax:success", (e, data, status, xhr) ->
    $("#remaining_container").slideDown()
    #$("#remaining_hidden").attr('id', 'remaining')
    $("#feeding_loader").hide()
    $("#done_message").replaceWith xhr.responseText

  ).on "ajax:error", (e, xhr, status, error) ->
    $("#feeding_loader").hide()
    $("#feed_button").append "<h1>ERROR</h1>"
