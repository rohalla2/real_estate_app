class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true
      t.references :property, index: true
      t.float :amount
      t.string :bank_routing_number
      t.string :bank_account_number
      t.string :account_type

      t.timestamps
    end
  end
end
