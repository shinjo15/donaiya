class Notice < ApplicationRecord
  validates :title, presence: true
  validates :notice_details, presence: true
end
