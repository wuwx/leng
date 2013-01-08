# encoding: utf-8
class Admin::PermissionsController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
    drop_breadcrumb("权限管理", collection_path)
  end
  
  protected
    def resource_params
      [params.require(:permission).permit(:name, :resource, :action, :role_ids)] unless request.get?
    end
    
    def resource_url
      [:edit, :admin, resource]
    end
  
end
