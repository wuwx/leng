class Permission < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_and_belongs_to_many :roles
end
