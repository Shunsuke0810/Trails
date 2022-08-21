Rails.application.routes.draw do
  root 'homes#index'
  post '/guest', to: 'guest_sessions#create'
  get "/admin", to: "application#check"
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  resources :labels
  resources :posts do
    resources :comments
  end
  get '/my_posts', to: 'posts#my_index'
  get '/markings', to: 'posts#marking'
  resources :units
  resources :book_marks, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
