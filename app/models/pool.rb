class Pool < ApplicationRecord
  belongs_to :park_spaces, foreign_key: "park_id", class_name: 'ParkSpace'
  validates :park_name, presence: true
end
