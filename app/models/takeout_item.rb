class TakeoutItem < ApplicationRecord
  has_one_attached :image
  has_many :cart_items
  belongs_to :home
  belongs_to :order_detail
end
