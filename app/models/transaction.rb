class Transaction < ActiveRecord::Base
  has_many :assets
  belongs_to :users
  belongs_to :portfolios
end
