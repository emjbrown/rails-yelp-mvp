Rails.application.routes.draw do
  # User can see the list of all restaurants
  get 'restaurants', to: 'restaurants#index'

end
