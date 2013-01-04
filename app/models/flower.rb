class Flower < ActiveRecord::Base
  belongs_to :topic, :counter_cache => true
  belongs_to :user, :counter_cache => true
end