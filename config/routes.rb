Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :books

  get 'about', to: 'pages#about'
  get 'writing', to: 'pages#writing'
  get 'podcast', to: 'pages#podcast'
end
