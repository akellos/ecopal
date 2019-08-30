class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true # Anyone can create a challenge!
  end

end
