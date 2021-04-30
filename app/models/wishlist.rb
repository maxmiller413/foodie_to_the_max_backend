class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_places
  has_many :places, through: :wishlist_places
end
