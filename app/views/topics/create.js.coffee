$(".topics").prepend("<%= escape_javascript(render(@topic)) %>")
$("#new_topic").each -> this.reset()
$('#<%= dom_id @topic %>').click ->
  $.get("/comments.js", { topic_id: $(this).attr('id').replace(/topic_/, '') })