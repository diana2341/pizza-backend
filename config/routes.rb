Rails.application.routes.draw do
  resources :creates
  resources :images
  resources :toppings
  resources :pizzas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
