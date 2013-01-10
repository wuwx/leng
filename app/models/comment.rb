class Comment < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :content
  belongs_to :topic
  belongs_to :user
  
  validates :topic_id, :presence => true
  validates :user_id, :presence => true
  validates :content, :presence => true
end
