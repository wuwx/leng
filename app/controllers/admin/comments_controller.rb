class Admin::CommentsController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
  end
  
  protected
    def collection
      @comments ||= end_of_association_chain.page(params[:page]).reverse_order
    end
end
