# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

 $(document).ready ->
  bwFlag = 0
  setInterval () ->
    if bwFlag == 0
      $(".logoblack").hide()
      $(".logowhite").show()
      bwFlag++
    else
      $(".logoblack").show()
      $(".logowhite").hide()
      bwFlag--
  , 1000
