class RestaurantsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @restaurants = current_user.restaurants      
  end

  def edit
    @restaurant = current_user.restaurants.find(params[:id])
  end

  def new
    @restaurant = current_user.restaurants.build
    @restaurant.restaurant_images.build
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @user = current_user
    @restaurant = @user.restaurants.build(restaurant_params)
    @restaurant.save
    @restaurants = current_user.restaurants
    flash.now[:notice] = "Restaurant was successfully created"
    respond_to do |format|
      format.js
    end  
  end

  def update
    @restaurant = current_user.restaurants.find(params[:id])
    @restaurant.update(restaurant_params)
    @restaurants = current_user.restaurants
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @restaurant = current_user.restaurants.find(params[:id])
    @restaurant.destroy
  end

  def search
    @search = Restaurant.search do
      fulltext  params[:search]
    end
    @restaurants = @search.results
  end

  private
   
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :image, :email, :contact, :full_address, clips: [], images: [] )
  end
end
