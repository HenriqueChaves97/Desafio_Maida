Rails.application.routes.draw do
  resources :meals
  resources :weighings
  devise_for :users
  resources :diets
  resources :users
  root 'diets#new'
end
