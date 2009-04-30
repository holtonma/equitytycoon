class ChangeColNameInAssets < ActiveRecord::Migration
  def self.up
	  rename_column :assets, :type_id, :asset_type_id
  end

  def self.down
	  rename_column :assets, :asset_type_id, :type_id
  end
end
