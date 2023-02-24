class ParkSpace < ApplicationRecord
 self.primary_key = 'park_id'
 has_many :park_assets, foreign_key: "park_id"
 has_one :spray_pads, foreign_key: "park_id"
 has_one :pools, class_name: "Pool", foreign_key: "park_id"
 validates :park_name, presence: true
end
