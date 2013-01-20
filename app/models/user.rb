class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  include ActiveModel::ForbiddenAttributesProtection
  
  include Gravtastic
  gravtastic
  
  acts_as_follower
  acts_as_followable
  
  has_many :comments
  has_many :topics
  has_and_belongs_to_many :roles
  
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  #validates :password, :presence => true
  #validates :password_confirmation, :presence => true
  
end
