class Country < ApplicationRecord
  has_many :Ad
  validates :name, presence: true, uniqueness: true
end
