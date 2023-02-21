# app/models/condition.rb

class Condition < ApplicationRecord
  has_many :Ad

  validates :name, presence: true, uniqueness: true
end
