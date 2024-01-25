Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "kittens#index"

  resources :kittens
end
