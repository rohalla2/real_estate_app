class RenameColumnsinApplications < ActiveRecord::Migration
  def change
  	rename_column :applications, :User_id, :user_id
  	rename_column :applications, :Property_id, :property_id
  end
end
