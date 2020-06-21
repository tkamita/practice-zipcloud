Rails.application.routes.draw do
  root to: 'maps#index'
  resources :maps, only: [:index]
  get 'search', to: "search#search"
  get '/map_request', to: 'maps#map', as: 'map_request'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
