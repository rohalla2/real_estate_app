class CreateReceives < ActiveRecord::Migration
  def change
    create_table :receives do |t|
      t.references :User, index: true
      t.References :Message

      t.timestamps
    end
  end
end
