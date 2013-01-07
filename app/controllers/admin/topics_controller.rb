class Admin::TopicsController < Admin::ApplicationController
  inherit_resources
  
  protected
    def collection
      @topics ||= end_of_association_chain.page(params[:page]).reverse_order
    end
end
