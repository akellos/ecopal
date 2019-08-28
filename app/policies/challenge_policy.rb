class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view any challenge
      scope.all

      # Display only challenge of owner
      # scope.where(user: user)
    end
  end

  def create?
    return true # Anyone can create a challenge!
  end

  def show?
    return true
  end

  def index?
    return true
  end

  def update?
    # Inside a policy?
    # 1. 'user' is the current_user
    # 2. 'record' is the argument passed to 'authorize' in Controller.
    user_is_owner?
  end

  def destroy?
    # 1st: only an admin

    # 2nd: the owner can destroy
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
