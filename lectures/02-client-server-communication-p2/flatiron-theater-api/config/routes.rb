Rails.application.routes.draw do
  resources :tickets
  resources :users
  # resources :production_roles
  resources :productions

#  get '/production', to: 'production#index'
end
