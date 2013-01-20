class Api::V1::TopicsController < Api::V1::ApplicationController
  
  def create
    build_resource.user = current_user
    create!
  end
  
  protected
    def resource_params
      [params.require(:topic).permit(:content)] unless request.get?
    end
end
