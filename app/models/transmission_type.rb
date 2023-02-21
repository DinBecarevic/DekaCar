# app/models/transmission_type.rb

class TransmissionType < ApplicationRecord
  has_many :Ad

  validates :name, presence: true, uniqueness: true
end
