Rails.application.routes.draw do
  resources :items, only: [:index]
  resources 
  resources :users, only: [:show]
end
