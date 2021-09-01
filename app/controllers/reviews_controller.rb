class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    @review.event = Event.find(params[:event_id])
    if @review.save
      redirect_to event_path(@review.event)
    else
      render "join_requests"
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :score, :reviewee_id, :reviewer_id)
  end
end

#def starCal (amountOfGames, actualrating)
  #TotalGames = amountOfGames * 5;
  #Ratingpercenate = (actualrating * 100) / TotalGames
  #Ratingpercenate
#end
