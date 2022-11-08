class Home < ApplicationRecord
  has_many :recommendations
  has_many :orders
  has_many :takeout_items
end
