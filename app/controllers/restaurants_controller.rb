class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :create]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.new(restaurant_params)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
