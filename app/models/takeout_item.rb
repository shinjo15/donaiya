class TakeoutItem < ApplicationRecord
  has_one_attached :image
  has_many :cart_items
  belongs_to :home, optional: true
  belongs_to :order_detail, optional: true

  validates :image, presence: true
  validates :takeout_name, presence: true
  validates :takeout_details, presence: true
  validates :tax_price, presence: true
end
