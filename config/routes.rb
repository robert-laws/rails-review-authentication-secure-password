Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  post '/logout', to: 'sessions#destroy'

  root 'users#index'
end
