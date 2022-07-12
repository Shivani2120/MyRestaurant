class MenusController < ApplicationController
    def index
        @menus = Menu.all
    end

    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @menu = @restaurant.menus.new
    end

    def edit
    end

    def create
        @restaurant = Restaurant.find(params[:restaurant_id])  
        @menu = @restaurant.menus.create(menu_params)
        @menu.save
        redirect_to restaurant_menus_path
        
    end

    def update
    end 

    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id]) 
        @menu = @restaurant.menus.find(params[:id])
        debugger
        @menu.destroy 
        debugger 
        redirect_to restaurant_menus_path

    end

    private 

    def menu_params
        params.require(:menu).permit(:title, :description, :picture)
    end
    
end
