class RenameTenant < ActiveRecord::Migration
  def change
  	rename_table :tenant_of, :tenant_ofs
  end
end
