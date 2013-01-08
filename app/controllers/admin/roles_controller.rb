# encoding: utf-8
class Admin::RolesController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
    drop_breadcrumb("角色管理", collection_path)
    drop_page_title("角色管理")
  end
  
  protected
    def resource_params
      [params.require(:role).permit(:name)] unless request.get?
    end
  
    def resource_url
      [:edit, :admin, resource]
    end
  
end
