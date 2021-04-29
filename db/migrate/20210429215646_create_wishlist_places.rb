class CreateWishlistPlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlist_places do |t|
      t.references :place, null: false, foreign_key: true
      t.references :wishlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
