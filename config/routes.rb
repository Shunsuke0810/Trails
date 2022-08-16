Rails.application.routes.draw do
  get 'comments/create'
  resources :labels
  resources :posts do
    resources :comments
  end
  resources :units
  resources :book_marks, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
