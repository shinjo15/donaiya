class Recommendation < ApplicationRecord
  has_one_attached :image
  belongs_to :home, optional: true

  validates :image, presence: true
  validates :name, presence: true
  validates :details, presence: true
  validates :tax_price, presence: true
end
