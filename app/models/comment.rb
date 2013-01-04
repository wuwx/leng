class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :topic, :counter_cache => true
  belongs_to :user, :counter_cache => true
  
  validates :topic_id, :presence => true
  validates :user_id, :presence => true
  validates :content, :presence => true
end
