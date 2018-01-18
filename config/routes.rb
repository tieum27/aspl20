Rails.application.routes.draw do
  get 'uploads/create'

  get 'uploads/destroy'

  resources :posts

  resources :transportations

  resources :transports

  resources :activite_aquatiques

  resources :equipements

  resources 'uploads', only: [:create, :destroy]

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

  get 'posts/index'

  root to: "accueil#index"
 end
