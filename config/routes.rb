Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
