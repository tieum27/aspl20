Rails.application.routes.draw do
  get 'lieux/index'

  get 'activites/index'

  get 'inscription/index'

  get 'contacts/index'

  get 'accueil/index'

  root to: "accueil#index"
 end
