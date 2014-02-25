class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :zipcode, :zip_code
  end
end
