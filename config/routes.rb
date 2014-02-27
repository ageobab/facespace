Facespace::Application.routes.draw do

  get "users" => "users#index"
  devise_for :users
  root "static#index"

  
end
