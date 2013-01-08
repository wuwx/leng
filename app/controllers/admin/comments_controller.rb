# encoding: utf-8
class Admin::CommentsController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
    drop_breadcrumb("评论管理", collection_path)
  end
  
  protected
    def collection
      @comments ||= end_of_association_chain.page(params[:page]).reverse_order
    end
end
