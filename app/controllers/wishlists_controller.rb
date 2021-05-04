class WishlistsController < ApplicationController
    def index
        @wishlists = Wishlist.all 
        render json: @wishlists
    end 

    def show
        @wishlist = Wishlist.find_by(id: params[:id])
        render json: @wishlist
    end 

    def create
        @wishlist = Wishlist.create(wishlist_params)
        render json: @wishlist
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:title, :user_id)
    end
end
