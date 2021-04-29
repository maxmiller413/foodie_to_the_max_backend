class WishlistPlace < ApplicationRecord
  belongs_to :place
  belongs_to :wishlist
end
