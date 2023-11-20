Rails.application.routes.draw do
  resources :orders
  resources :carts
  devise_for :users
  resources :addresses
  resources :foods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
