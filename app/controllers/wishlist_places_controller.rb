class WishlistPlacesController < ApplicationController
    def index
        @wishlist_places = WishlistPlace.all 
        render json: @wishlist_places
    end 

    def show
        @wishlist_place = WishlistPlace.find_by(id: params[:id])
        render json: @wishlist_place
    end 

    def create
        @wishlist_place = WishlistPlace.create(wishlist_place_params)
        render json: @wishlist_place
    end

    private

    def wishlist_place_params
        params.require(:wishlist_place).permit(:wishlist_id, :place_id)
    end
end
