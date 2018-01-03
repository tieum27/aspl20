Rails.application.routes.draw do
  get 'trampoline/index'

  get 'gym_enfants/index'

  get 'gym_adultes/index'

  get 'bb_nageurs/index'

  get 'aquagym/index'

  get 'natation/index'

  get 'lieux/index'

  get 'activites/index'

  get 'inscription/index'

  get 'contacts/index'

  get 'accueil/index'

  root to: "accueil#index"
 end
