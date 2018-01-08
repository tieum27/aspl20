class NatationController < ApplicationController
  def index
      @group1 = ActiviteAquatique.where("age_group='1'")
      @group2 = ActiviteAquatique.where("age_group='2'")
      @group3 = ActiviteAquatique.where("age_group='3'")
      @aquagym = ActiviteAquatique.where("nom='Aquagym'")

  end
end
