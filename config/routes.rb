Rails.application.routes.draw do
  resources :restaurants, only: %i[index new create show] do
  # User can see the list of all restaurants
  # get 'restaurants', to: 'restaurants#index'

  # User can add a new restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # User can view one restaurant page
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

    # User can add a new review to a restaurant
    resources :reviews, only: [:new, :create]
  end
end
