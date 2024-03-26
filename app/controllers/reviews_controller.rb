class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %w[index create]
  def index
    @reviews = @restaurant.reviews
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
