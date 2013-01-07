class Admin::UsersController < Admin::ApplicationController
  inherit_resources
  
  protected
    def collection
      @users ||= end_of_association_chain.page(params[:page]).reverse_order
    end
end
