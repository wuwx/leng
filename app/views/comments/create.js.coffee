$("#<%= dom_id @topic %> .comments").append("<%= escape_javascript(render(@comment)) %>")
$("#<%= dom_id @topic %> .comments_count").html("评论 <%= @topic.comments.count %>")
$("#<%= dom_id @topic %> #new_comment").each -> this.reset()