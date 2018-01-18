class Transport < ApplicationRecord
  has_many :transportations
  has_many :equipements, through: :transportations

  def combo_ligne_arret
    "#{ligne} - #{arret}"
  end


end
