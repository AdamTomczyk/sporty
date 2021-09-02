class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    @review.event = Event.find(params[:event_id])
    if @review.save
      redirect_to join_requests_path
    else
      render "join_requests"
    end
  end

  def sum
    current_user.reviews.sum(:score) #count?
  end

  def average
    current_user.reviews.average(:score)
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
