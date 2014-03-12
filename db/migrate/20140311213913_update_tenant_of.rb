class UpdateTenantOf < ActiveRecord::Migration
  def change
  	rename_column :tenant_ofs, :User_id, :user_id
  	rename_column :tenant_ofs, :Property_id, :property_id
  end
end
