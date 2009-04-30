class Portfolio < ActiveRecord::Base
  has_many :portfolio_items
  has_many :transactions
  belongs_to :user
  
  has_many :assets, :through => :portfolio_items
	
  private 
	
		def update_current_value port_id
			# items in portfolio... each portfolio item: qty * price... sum all of them up.
			items = PortfolioItem.find(:all, :conditions => ["portfolio_id = ?", port_id])
			
		end
end
