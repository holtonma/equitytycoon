class CreatePortfolioItems < ActiveRecord::Migration
  def self.up
    create_table :portfolio_items do |t|
      t.integer :user_id
      t.integer :asset_id
      t.integer :qty
      t.datetime :purchased_date
      t.integer :transaction_fee
      t.integer :cost_basis

      t.timestamps
    end
  end

  def self.down
    drop_table :portfolio_items
  end
end
