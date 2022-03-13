Rails.application.routes.draw do
  resources :cart_themes
  resources :video_themes
  resources :sliders
  resources :product_images
  resources :products
  resources :subcategories
  resources :categories
  devise_for :customers
  devise_for :vendors
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
