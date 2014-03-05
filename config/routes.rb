Facespace::Application.routes.draw do

  get "users" => "users#index"
  devise_for :users, controllers: { registrations: "registrations" }
  root "static#index"
  get "/welcome" => "static#welcome"
  match "/contact" => "static#contact", via: [:get, :post]

  
end
