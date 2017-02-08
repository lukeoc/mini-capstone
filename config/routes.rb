Rails.application.routes.draw do

  get "/products" => "products#index"
  post "/search" => "products#search"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/images/new" => "images#new"
  get "/images" => "images#create"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => 'orders#create'
  get "/orders/:id" => "orders#show"

  post "/carted_products" => "carted_products#create"
  get "/carted_products/index" => "carted_products#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
