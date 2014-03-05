class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :message
      t.string :message_type
      t.references :User, index: true

      t.timestamps
    end
  end
end
