class ReviewsController < ApplicationController
  resources :reviews, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to new_review_path
    else
      flash[:alert] = "Try again."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :score)
  end
end

# Form Should go in the MODAL What is Modal?!!!!
# Modal pops up once the event has taken the place.


#def startCal (amountOfGames, actualrating)
  #TotalGames = amountOfGames * 5;
  #Ratingpercenate = (actualrating * 100) / TotalGames
  #Ratingpercenate
#end
