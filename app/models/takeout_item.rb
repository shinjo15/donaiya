class TakeoutItem < ApplicationRecord
  has_one_attached :image
  has_many :cart_items
  belongs_to :home, optional: true
  belongs_to :order_detail, optional: true
end
