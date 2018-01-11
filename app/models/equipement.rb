class Equipement < ApplicationRecord
  geocoded_by :adresse
  after_validation :geocode
  has_many :tranportations
  has_many :transports, through: :transportations

end
