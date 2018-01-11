class Transport < ApplicationRecord
  has_many :tranportations
  has_many :equipements, through: :transportations
end
