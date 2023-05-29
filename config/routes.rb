Rails.application.routes.draw do
  get 'bookings/new'
  get 'users/show'
  get 'offers/index'
  get 'offers/new'
  get 'offers/show'
  get 'offers/edit'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
