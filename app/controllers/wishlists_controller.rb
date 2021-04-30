class WishlistsController < ApplicationController
    def index
        @wishlists = Wishlist.all 
        render json: @wishlists
    end 

    def show
        @wishlist = Wishlist.find_by(id: params[:id])
        render json: @wishlist
    end 
end
