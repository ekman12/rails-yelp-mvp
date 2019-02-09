class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # @review.save

    # if @review is valid
    if @review.save
      redirect_to restaurant_path(@restaurant) #happy flow
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit([:content, :rating])
  end
end
