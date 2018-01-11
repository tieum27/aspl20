class LieuxController < ApplicationController
  def index
    @piscine = Equipement.where("type_equipement='Piscine'")
    @transport = Transport.order(ligne: :ASC).where(:type_transport => 'Metro')
    @transportations = Transportation.all
  end
end
