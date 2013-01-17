class Topic < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :content
  
  acts_as_votable
  acts_as_commentable
  
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :presence => true
end
