class Order < ApplicationRecord
  has_many :cart, through: :order_details
  belongs_to :home
end
