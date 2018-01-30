class LieuxController < ApplicationController
  def index
    @piscines = Equipement.includes(:transportations).where("type_equipement = 'Piscine'")
    @gymnases = Equipement.includes(:transportations).where("type_equipement = 'Gymnase'")
  end

  def map_location
    @Equipement = Equipement.all
    @hash = Gmaps4rails.build_markers(@equipement) do |equipement, marker|
      marker.lat(equipement.latitude)
      marker.lng(equipement.longitude)
      marker.infowindow("<em>" + equipement.address + "</em>")
    end
    render json: @hash.to_json
  end
end
