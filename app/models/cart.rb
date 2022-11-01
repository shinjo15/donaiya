class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :takeout_item, through: :cart_items
  
  def add_takeout_item(takeout_item_id)
    cart_items.find_or_initialize_by(tekeout_item_id: tekeout_item_id)
  end
end
