class AquagymController < ApplicationController
  def index
    @aquagym = ActiviteAquatique.where("nom='Aquagym'")
  end
end
