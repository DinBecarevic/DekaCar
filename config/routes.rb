Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :ads, only: [:new, :create, :edit, :update, :destroy]
  root to: "pages#home"
  get '/oglasi', to: 'pages#oglasi'
  get '/car/:id', to: 'pages#car', as: 'car'
  get 'ads/mojiOglasi', to: 'ads#mojiOglasi'
  resources :mojiOglasi, only: :mojiOglasi
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'dashboard/index'



  # routes.rb
  get '/car_models', to: 'car_models#index'

  # car_models_controller.rb

end
