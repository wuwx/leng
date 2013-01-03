$("#<%= dom_id @topic %> .comments").append("<%= escape_javascript(render(@comment)) %>")
$("#<%= dom_id @topic %> #new_comment").each -> this.reset()