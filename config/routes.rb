Rails.application.routes.draw do

  root to: 'home#index'

  resources :clays
  resources :glaze_materials
  resource :home
  resources :pots

  resources :glaze_recipes do
    resources :glaze_recipe_versions
  end
end
