Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  scope module: 'users' do
    resources :books do
      resources :elements
    end
    resources :posts
  end

  get 'about', to: 'pages#about'
  get 'podcast', to: 'pages#podcast'
end
