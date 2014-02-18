class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :description
      t.integer :beds
      t.float :baths
      t.integer :square_feet
      t.float :price
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.boolean :has_laundry
      t.boolean :has_parking
      t.string :image_url

      t.timestamps
    end
  end
end
