class CommentsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @comments = @topic.comments
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics }
      format.js
    end
  end
end
