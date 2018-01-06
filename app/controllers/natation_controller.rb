class NatationController < ApplicationController
  def index
      @group1 = ActiviteAquatique.where("age_group='1'")
  end
end
