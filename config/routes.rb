Rails.application.routes.draw do
  resources :clothings
  resources :garments
  resources :brands
  resources :garment_types
  resources :transmissions
  resources :presenters
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "clothings#index"
end
