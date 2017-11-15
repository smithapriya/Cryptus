Rails.application.routes.draw do
  devise_for :users
  # root_url is needed for Devise Gem.
  # root to: "home#index"
  root "home#index"
  resources :users
  get "users/show", to: "users#show", as: "profile"
  get "profile" => redirect("users/show")
  get "*path" => redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
