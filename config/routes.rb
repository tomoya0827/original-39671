Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create, :show, :destroy]
  resources :users, only: [:edit, :update]
end
