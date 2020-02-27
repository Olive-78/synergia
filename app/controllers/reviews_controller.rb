class ReviewsController < ApplicationController
  def new
    # @user = current_user
    @meeting = Meeting.where(user_two_id: current_user).or(Meeting.where(user_one_id: current_user)).order("id DESC").offset(1).first
    @review = Review.new
    @review.meeting = @meeting
    authorize @review
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @review = Review.new(review_params)
    @review.meeting = @meeting
    if @review.save
      redirect_to meeting_path(@meeting)
    else
      if params[:controller] == "pages"
        render "pages/home"
      else
        render "pages/home"
# Définir vers quelle autre page renvoyer quand on aura statué
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
