class Equipement < ApplicationRecord
  geocoded_by :adresse
  after_validation :geocode

  has_many :transportations
  has_many :transports, through: :transportations

end
