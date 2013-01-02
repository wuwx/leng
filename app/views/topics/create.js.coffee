$(".topics").prepend("<%= escape_javascript(render(@topic)) %>")
$("#new_topic").each -> this.reset()