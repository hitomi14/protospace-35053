Rails.application.routes.draw do
  get 'prototypes/index'
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
