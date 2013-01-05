class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  include Gravtastic
  gravtastic
  has_secure_password
  
  attr_accessible :name, :email, :password, :password_confirmation
  
  has_many :flowers
  has_many :comments
  has_many :topics
  
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true
end
