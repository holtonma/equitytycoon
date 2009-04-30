class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :portfolio_id
      t.integer :qty
      t.datetime :date
      t.integer :action_id
      t.integer :transaction_fee
      t.integer :asset_id

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
