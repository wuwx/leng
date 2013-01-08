class Admin::RolesController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
  end
  
  protected
    def resource_params
      [params.require(:role).permit(:name)] unless request.get?
    end
  
    def resource_url
      [:edit, :admin, resource]
    end
  
end
