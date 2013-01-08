class Admin::UsersController < Admin::ApplicationController
  inherit_resources
  
  protected
    def collection
      @users ||= end_of_association_chain.page(params[:page]).reverse_order
    end
    
    def resource_params
      [params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_ids)] unless request.get?
    end
    
    def resource_url
      [:edit, :admin, resource]
    end
end
