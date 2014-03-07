class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
   	  t.references :user, index: true
      t.references :message
      t.timestamps
    end
  end
end
