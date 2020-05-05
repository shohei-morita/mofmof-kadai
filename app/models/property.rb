class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true

  validates :name, length: { in: 1..100 }, presence: true
  validates :cost, numericality: { only_integer: true }, presence: true
  validates :address, length: { in: 1..100 }, presence: true
  validates :age, numericality: { only_integer: true }, presence: true
  
end
