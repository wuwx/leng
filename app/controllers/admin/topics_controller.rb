# encoding: utf-8
class Admin::TopicsController < Admin::ApplicationController
  inherit_resources
  
  before_filter do
    @current << collection_path
    drop_breadcrumb("主题管理", collection_path)
    drop_page_title("主题管理")
  end
  
  protected
    def collection
      @topics ||= end_of_association_chain.page(params[:page]).reverse_order
    end
end
