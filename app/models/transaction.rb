class Transaction < ActiveRecord::Base
  has_one :asset
  belongs_to :users
  belongs_to :portfolios
end
