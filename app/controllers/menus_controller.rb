class MenusController < ApplicationController
    def index
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menus = Menu.order(position: :desc)
    end

    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menu = @restaurant.menus.new
    end

    def show
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menu = @restaurant.menus.find(params[:id])
    end 

    def edit
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menu = @restaurant.menus.find(params[:id])
    end

    def create
        @restaurant = Restaurant.find(params[:restaurant_id])  
        @menu = @restaurant.menus.create(menu_params)
        @menu.save
          redirect_to restaurant_menus_path
        
    end

    def update
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menu = Menu.find(params[:id])
        @menu.update(menu_params)
          redirect_to restaurant_menus_path
    end 

    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id]) 
        @menu = Menu.find(params[:id])
        @menu.destroy 
          redirect_to restaurant_menus_path

    end

    private 

    def menu_params
        params.require(:menu).permit(:title, :position, :description, :pricing, pictures: [])
    end
    
end
