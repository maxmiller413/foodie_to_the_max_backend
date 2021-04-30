class WishlistPlacesController < ApplicationController
    def index
        @wishlist_places = WishlistPlace.all 
        render json: @wishlist_places
    end 

    def show
        @wishlist_place = WishlistPlace.find_by(id: params[:id])
        render json: @wishlist_place
    end 
end
