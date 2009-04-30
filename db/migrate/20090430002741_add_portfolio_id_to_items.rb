class AddPortfolioIdToItems < ActiveRecord::Migration
  def self.up
    add_column :portfolio_items, :portfolio_id, :integer
  end

  def self.down
    remove_column :portfolio_items, :portfolio_id
  end
end
