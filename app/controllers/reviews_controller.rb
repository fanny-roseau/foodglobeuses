class ReviewsController < ApplicationController

   def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Votre commentaire a bien été pris en compte! Vous serez avertis lors de sa publication."
      redirect_to restaurant_article_path(@review.restaurant, @review.restaurant.article)
    else
      redirect_to restaurant_article_path(@review.restaurant, @review.restaurant.article)
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :email, :website, :comment)
  end

end
