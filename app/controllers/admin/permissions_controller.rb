class Admin::PermissionsController < Admin::ApplicationController
  
  inherit_resources
  
  def resource_params
    [params.require(:permission).permit(:name, :resource, :action, :role_ids)] unless request.get?
  end
  
  def resource_url
    [:edit, :admin, resource]
  end
  
end
