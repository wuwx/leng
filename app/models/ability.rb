class Ability
  include CanCan::Ability
  def initialize(user)
    
    user ||= User.new
    
    if user.id
      can :create, Topic
      can :create, Comment
    end
    
  end
end
