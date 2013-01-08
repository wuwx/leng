class Flower < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :topic, :counter_cache => true
  belongs_to :user, :counter_cache => true
  
  validates :user_id, :uniqueness => { :scope => :topic_id }
end
