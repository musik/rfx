Rails.application.routes.draw do
  resources :brands

  resources :items

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
