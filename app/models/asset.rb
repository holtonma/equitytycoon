class Asset < ActiveRecord::Base
	has_many :portfolio_items
	belongs_to :asset_types
end
