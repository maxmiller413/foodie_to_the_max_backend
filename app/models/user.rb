class User < ApplicationRecord
    has_many :wishlists
    has_secure_password
end
