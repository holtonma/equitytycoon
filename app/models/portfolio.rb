class Portfolio < ActiveRecord::Base
  has_many :portfolio_items
  has_many :transactions
  belongs_to :user
end
