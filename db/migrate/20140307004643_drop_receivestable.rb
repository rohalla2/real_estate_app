class DropReceivestable < ActiveRecord::Migration
  def change
  	drop_table :receives
  end
end
