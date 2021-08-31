class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    @review.event = Event.find(params[:review][:event_id])
    @review.reviewee = @review.event.user
    if @review.save
      redirect_to event_path(@review.event)
    else
      flash[:alert] = "Try again."
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :score)
  end
end

#def startCal (amountOfGames, actualrating)
  #TotalGames = amountOfGames * 5;
  #Ratingpercenate = (actualrating * 100) / TotalGames
  #Ratingpercenate
#end
