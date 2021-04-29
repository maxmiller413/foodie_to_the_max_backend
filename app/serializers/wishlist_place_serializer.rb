class WishlistPlaceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :place
  has_one :wishlist
end
