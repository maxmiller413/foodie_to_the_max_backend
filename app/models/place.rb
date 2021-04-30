class Place < ApplicationRecord
    has_many :wishlist_places
    has_many :wishlists, through: :wishlist_places
end
