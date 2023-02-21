class City < ApplicationRecord
  has_many :Ad

  validates :name, :postcode, presence: true, uniqueness: true
end
