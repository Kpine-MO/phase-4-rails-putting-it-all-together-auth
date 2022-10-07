Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  resources :recipes, only: [:index, :create]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
