class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :symbol
      t.string :name
      t.integer :type_id
      t.integer :current_price

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
