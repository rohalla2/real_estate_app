class ChangemessageColumnName < ActiveRecord::Migration
  def change
  	rename_column :messages, :User_id, :user_id
  end
end
