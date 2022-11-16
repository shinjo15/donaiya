class Order < ApplicationRecord
  has_many :order_details
  has_many :takeout_items, through: :order_details
  has_many :cart, through: :order_details
end
