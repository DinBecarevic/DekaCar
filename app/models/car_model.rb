class CarModel < ApplicationRecord
  belongs_to :car_make
  has_many :Ad

  validates :name, presence: true
end
