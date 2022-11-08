class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :cart, optional: true
end
