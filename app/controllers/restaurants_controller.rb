class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def index
    @restaurants = current_user.restaurants
  end

  def edit
    @restaurant = current_user.restaurants.find(params[:id])
  end

  def new
    @restaurant = current_user.restaurants.build
  end

  def show
    @restaurant = current_user.restaurants.find(params[:id])
  end

  def create
    @user = current_user
    @restaurant = @user.restaurants.build(restaurant_params)
    @restaurant.save
    
    redirect_to @restaurant
  end

  def update
    @restaurant = current_user.restaurants.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to @restaurant
  end

  def destroy
    @restaurant = current_user.restaurants.find(params[:id])
    @restaurant.destroy
    
    redirect_to @restaurant
  end

  private
   
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :image, :email, :contact, :full_address)
  end
end
