class MeetingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user_one == user || record.user_two == user
  end

  def update?
    record.user == user
  end
end
