class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :title, :user
  # has_one :user
  
  has_many :wishlist_places
  has_many :places, through: :wishlist_places

  belongs_to :user
  
end
