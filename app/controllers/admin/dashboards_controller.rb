# encoding: utf-8
class Admin::DashboardsController < Admin::ApplicationController
  before_filter do
    @current << admin_dashboard_path
  end
end
