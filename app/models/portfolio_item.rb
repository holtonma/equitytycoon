class PortfolioItem < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :asset

  def item_current_value item_id
	  item = PortfolioItem.find(item_id, :include => [:asset])
	  current_value_in_mills = item.qty * item.asset.current_price
	
	  current_value_in_mills
	end
	
	
end



