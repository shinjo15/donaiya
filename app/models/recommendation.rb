class Recommendation < ApplicationRecord
  has_one_attached :image
  belongs_to :home, optional: true
end
