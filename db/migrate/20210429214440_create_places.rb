class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :image_url
      t.string :url
      t.float :rating
      t.integer :review_count
      t.string :categories
      t.string :price

      t.timestamps
    end
  end
end
