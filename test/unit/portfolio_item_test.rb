require 'test_helper'

class PortfolioItemTest < ActiveSupport::TestCase
	
  test "calculating the current value of a portfolio item is accurate" do
	  item = portfolio_items(:one)
	  asset = Asset.find(item.asset_id)
	  current_val_mills = item.qty * asset.current_price
	  
	  i = PortfolioItem.find(item.id)
	  val = item.current_value(item.id)
		assert_equal current_val_mills, val
  end

end
