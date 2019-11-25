Rails.application.routes.draw do
  
  get 'relationships/create'
  get 'relationships/detroy'
  resources :posts do
    resources :comments
  end
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :users, only: [:index]
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
end
