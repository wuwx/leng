class User < ActiveRecord::Base
  include Gravtastic
  gravtastic
  has_secure_password
  
  attr_accessible :name, :email, :password, :password_confirmation
  
  has_many :flowers
  
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true
end
