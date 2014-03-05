class AddisactiveToTenantof < ActiveRecord::Migration
  def change
  	add_column :tenant_ofs, :is_active, :boolean
  	add_column :properties, :is_available, :boolean
  	add_column :properties, :date_available, :date
  end
end
