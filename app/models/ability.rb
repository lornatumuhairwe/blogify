class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, all
    if user.present?
      can :create, Comment
      can :update, Comment, user_id: user.id
      can :update, Story, user_id: user.id
    end
  end
end
