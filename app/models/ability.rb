class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new
    alias_action :read, :create, :update, :to => :rcu
    
    if user.role? :admin
      can :manage, :all
    elsif
      user.role?  :registered
      can :rcu, :all
    else
      can :read, :all

    end
  end
end
