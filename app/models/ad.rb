# app/models/ad.rb

class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :car_make
  belongs_to :car_model
  belongs_to :body_type
  belongs_to :condition
  belongs_to :fuel_type
  belongs_to :transmission_type
  belongs_to :country
  belongs_to :city

  has_many :ad_photo, dependent: :destroy

  has_many_attached :images

  validates :title, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :year, presence: true, numericality: { greater_than: 0 }
  validates :mileage, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :kw, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :horsepower, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :ccm, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :vin, uniqueness: true, allow_nil: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true

  accepts_nested_attributes_for :ad_photo, allow_destroy: true
end
