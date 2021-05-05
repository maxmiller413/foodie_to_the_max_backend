class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :street_address, :city, :state, :zip, :image_url, :url, :rating, :review_count, :categories, :price
  
  has_many :wishlist_places
  has_many :wishlists, through: :wishlist_places
  # has_many :wishlists, through: :wishlist_places
end
