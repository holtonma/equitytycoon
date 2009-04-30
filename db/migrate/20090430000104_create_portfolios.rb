class CreatePortfolios < ActiveRecord::Migration
  def self.up
    create_table :portfolios do |t|
      t.string :name
      t.integer :user_id
      t.datetime :created
      t.integer :start_value
      t.integer :current_value
      t.datetime :value_last_updated
      t.integer :active

      t.timestamps
    end
  end

  def self.down
    drop_table :portfolios
  end
end
