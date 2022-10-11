Rails.application.routes.draw do
  
  resources :user_profiles, only: [:create, :update]
  resources :traveller_flights, only: [:create, :update]
  resources :flights, only: [:index, :show]
  resources :travellers, only: [:index, :show, :destroy]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
