class Flower < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :topic
  belongs_to :user
  
  validates :user_id, :uniqueness => { :scope => :topic_id }
end
