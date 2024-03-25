class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      @review_total = @restaurant.reviews.count
      @review_total.zero? ? @restaurant.average_rating = @review.rating : @restaurant.average_rating = (@restaurant.average_rating + @review.rating) / @review_total
      @restaurant.save
    end
    redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
