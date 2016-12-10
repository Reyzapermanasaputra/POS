Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :sales
  resources :products
  resources :activities
end
