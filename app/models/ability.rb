# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

       if user.id == 1
         can :manage, :all
       end


       if user.admin?
         can :manage, Vaccines
         can :manage, Nurses
         can :manage, Patients


       else
         can :read, :all
         can :create, User
         can :read, User, :id => user.id
         can :update, User, :id => user.id
       end
  end
end
