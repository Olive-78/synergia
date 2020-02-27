class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user == record.meeting.user_one || user == record.meeting.user_two
  end

  def create?
    record.user == user
  end
end
