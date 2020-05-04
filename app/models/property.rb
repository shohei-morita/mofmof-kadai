class Property < ApplicationRecord
  has_many :neartest_staitons
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true
end
