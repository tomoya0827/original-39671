Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts do
    resources :comments, only: :create
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
  end
end
