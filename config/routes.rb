Rails.application.routes.draw do

  resources :users
  resources :attractions, except: [:show]

  post '/rides/new/:id', to: 'rides#new', as: 'new_ride'
  get '/attractions/:id', to: 'rides#show', as: 'show_ride'


  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  root 'sessions#welcome'
end
