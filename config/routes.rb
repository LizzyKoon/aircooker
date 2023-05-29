Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show]

  resources :offers, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end

  get '/pages/dashboard'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
