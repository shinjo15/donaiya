class Order < ApplicationRecord
  has_many :cart, through: :order_details
end
