Rails.application.routes.draw do
  devise_for :add_columns
  devise_for :users
  root to: 'home#index'
  resources :products do
    resources :reviews 
  end
end
