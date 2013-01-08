# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#$ ->
#  $('.topic').click ->
#    $(this).unbind('click')
#    $.get("/comments.js", { topic_id: $(this).attr('id').replace(/topic_/, '') })

$ ->
  $('#topic_content').focus ->
    $('#topic_content').height(80)