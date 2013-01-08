class Role < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_and_belongs_to_many :users
end
