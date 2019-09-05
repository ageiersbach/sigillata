Rails.application.routes.draw do
  resources :pots
  resources :glaze_materials
  root to: 'home#index'
  resources :clays
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
