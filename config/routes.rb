Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :order_burgers
  resources :burgers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
