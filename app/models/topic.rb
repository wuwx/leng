class Topic < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :content
  
  has_many :flowers
  has_many :comments
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :presence => true
end
