class BbNageursController < ApplicationController
  def index
      @group1 = ActiviteAquatique.where(nom: 'BB Nageurs', age_group: '1')
      @group2 = ActiviteAquatique.where(nom: 'BB Nageurs', age_group: '2')
  end
end
