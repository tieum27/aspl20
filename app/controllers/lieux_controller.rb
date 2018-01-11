class LieuxController < ApplicationController
  def index
    @piscines = Equipement.where("type_equipement='Piscine'")
    @transport = Transport.order(ligne: :ASC).where(:type_transport => 'Metro')
    @transportations = Transportation.all
    @gymnases = Equipement.where("type_equipement='Gymnase'")
  end
end
