Rails.application.routes.draw do

  resources :users
  resources :attractions
  post '/attractions/ride', to: 'attractions#ride'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  root 'sessions#welcome'
end
