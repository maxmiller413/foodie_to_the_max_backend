class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :title, :wishlist_places
  # has_one :user
  # has_many :wishlist_places
  belongs_to :user
  
end
