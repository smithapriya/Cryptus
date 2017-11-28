Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # root_url is needed for Devise Gem.
  # root to: "home#index"
  root "home#index"
  resources :users
  get "users/:name", to: "users#show", as: "profile"
  
  resources :posts
  get '/posts', to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
