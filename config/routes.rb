Rails.application.routes.draw do
  resources :posts
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
