module MeetingRelationHelper
  def meeting_relation
    users = [@meeting.user_one, @meeting.user_two]
    users.delete(current_user)
    users.first
  end
end
