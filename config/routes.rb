Rails.application.routes.draw do
  devise_for :users
  resources :diets
  resources :users
  root 'diets#new'
end
