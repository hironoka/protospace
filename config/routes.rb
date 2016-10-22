Rails.application.routes.draw do

  devise_for :users
  root 'prototypes#index'

  resources :users, only: [:index, :show, :edit, :update]

  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  scope module: :prototypes do
    resources :popular, only: :index
    resources :newest, only: :index
    resources :tags, only: [:index, :show]
  end

end
