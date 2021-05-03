Rails.application.routes.draw do

# wishlist_places
  resources :wishlist_places

# wishlists
  resources :wishlists

# places
  resources :places

# resources :users
  #users
  post "/login", to: "users#login" 
  post "/signup", to: "users#signup"
  get "/me/:id", to: "users#show"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
