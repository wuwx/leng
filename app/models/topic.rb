class Topic < ActiveRecord::Base
  attr_accessible :content
  has_many :comments
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :presence => true
end
