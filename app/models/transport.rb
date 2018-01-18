class Transport < ApplicationRecord
  has_many :tranportations
  has_many :equipements, through: :transportations

  def combo_ligne_arret
    "#{ligne} - #{arret}"
  end


end
