class CarMake < ApplicationRecord
  has_many :car_model, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
