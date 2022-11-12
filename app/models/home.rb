class Home < ApplicationRecord
  has_many :recommendations
  has_many :order_details, through: :orders
  has_many :takeout_items
end
