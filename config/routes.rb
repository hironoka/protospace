Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes
  resources :users, only: [:index, :show, :edit, :update]
end
