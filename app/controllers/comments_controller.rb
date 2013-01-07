class CommentsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @comments = @topic.comments.includes(:user)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics }
      format.js
    end
  end
  
  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(params[:comment])
    @comment.user = current_user
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
end
