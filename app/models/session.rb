#class Session < ActiveRecord::Base
class Session
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming
  
  attr_accessor :email, :password
  attr_reader :user_id
  
  validates :email, :presence => true
  validates :password, :presence => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
  
  def save
    if valid? && user = User.find_by_email(email).try(:authenticate, password)
      @user_id = user.id
    end
  end
end
