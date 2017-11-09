Rails.application.routes.draw do
  get 'cryptocurrencys/fetch', to: 'cryptocurrencys#fetch', as: 'fetch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
