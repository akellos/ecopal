class TrackerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view any tracker (other user dashboard)
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
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
