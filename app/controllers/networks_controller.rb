class NetworksController < ApplicationController

  def index
    # @meetings_test = Meeting.last.user_two.first_name
    # @current_user_test = current_user.email
    # @meetings = Meeting.where(user_one: current_user).or(Meeting.where user_two: current_user)
    # users = []
    # @meetings.each do |network|
    #   users << network.user_one
    #   users << network.user_two
    # end
  @contacts = current_user.relations
  end
end
