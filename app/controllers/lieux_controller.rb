class LieuxController < ApplicationController
  def index
    @piscines = Equipement.includes(:transportations).where("type_equipement = 'Piscine'")
    @gymnases = Equipement.includes(:transportations).where("type_equipement = 'Gymnase'")
  end
end
