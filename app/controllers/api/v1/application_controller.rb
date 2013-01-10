class Api::V1::ApplicationController < ApplicationController
  inherit_resources
  respond_to :xml, :json
end