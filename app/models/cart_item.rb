class CartItem < ApplicationRecord
  belongs_to :takeout_item
  belongs_to :cart

  def sum_of_price
    takeout_item.tax_price * amount
  end
end
