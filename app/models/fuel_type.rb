class FuelType < ApplicationRecord
  has_many :Ad

  validates :name, presence: true
end
