Rails.application.routes.draw do
  resources :items, only: [:index]
  re
  resources :users, only: [:show]
end
