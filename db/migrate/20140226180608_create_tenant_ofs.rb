class CreateTenantOfs < ActiveRecord::Migration
  def change
    create_table :tenant_of do |t|
      t.references :User, index: true
      t.references :Property, index: true

      t.timestamps
    end
  end
end
