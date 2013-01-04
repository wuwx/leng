class FlowersController < ApplicationController
  
  def create
    @topic = Topic.find(params[:topic_id])
    @flower = @topic.flowers.build
    @flower.user = current_user
    
    respond_to do |format|
      if @flower.save
        format.js
      else
        format.js
      end
    end
  end
  
end
