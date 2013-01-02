$(".comments").remove()
$("#<%= dom_id @topic %>").after("<%= escape_javascript(render(:file => 'comments/index.html.erb')) %>")