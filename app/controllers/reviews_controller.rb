class ReviewsController < ApplicationController
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
