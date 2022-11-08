class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :takeout_items, through: :cart_items
  has_many :order_details

  def add_takeout_item(item_id)
    cart_items.find_or_initialize_by(takeout_item_id: item_id)
  end
end
