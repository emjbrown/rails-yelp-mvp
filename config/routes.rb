Rails.application.routes.draw do
  # User can see the list of all restaurants
  get 'restaurants', to: 'restaurants#index'

  # User can add a new restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'

  # User can view one restaurant page
  get 'restaurant/:id', to: 'restaurants#show'
end
