class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :User, index: true
      t.references :Property, index: true
      t.float :price_offer
      t.text :conditions

      t.timestamps
    end
  end
end
