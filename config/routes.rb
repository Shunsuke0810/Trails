Rails.application.routes.draw do
  resources :labels
  resources :posts
  resources :units
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
