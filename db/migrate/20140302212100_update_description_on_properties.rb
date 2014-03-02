class UpdateDescriptionOnProperties < ActiveRecord::Migration
  def up
  	change_column :properties, :description, :text, :limit => nil
  end

  def down
  	change_column :properties, :description, :string
  end
end
