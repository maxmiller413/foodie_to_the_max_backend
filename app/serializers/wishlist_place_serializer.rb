class WishlistPlaceSerializer < ActiveModel::Serializer
  attributes :id
  # has_one :place
  # has_one :wishlist
  belongs_to :place
  belongs_to :wishlist
end
