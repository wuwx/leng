class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do
    @current = []
  end
end
