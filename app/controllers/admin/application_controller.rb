# encoding: utf-8
class Admin::ApplicationController < ApplicationController
  before_filter do
    drop_breadcrumb("系统后台", admin_root_path)
  end  
end