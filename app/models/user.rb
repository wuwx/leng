class User < ActiveRecord::Base
  
  include Gravtastic
  gravtastic
  has_secure_password
  
  attr_accessible :name, :email, :password, :password_confirmation
  
  has_many :flowers
  has_many :comments
  has_many :topics
  has_and_belongs_to_many :roles
  
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true
  
end
