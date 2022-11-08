class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :cart, optional: true
  has_many :takeout_items
end
