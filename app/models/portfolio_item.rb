class PortfolioItem < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :asset

  def item_current_value
	  
	end
	
end



