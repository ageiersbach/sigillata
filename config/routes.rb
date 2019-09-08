Rails.application.routes.draw do

  root to: 'home#index'

  resource :home
  resources :glaze_recipes
  resources :pots
  resources :glaze_materials
  resources :clays
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
