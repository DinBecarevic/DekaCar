Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :ads, only: [:new, :create, :edit, :update, :destroy]
  root to: "pages#home"
  get '/oglasi', to: 'pages#oglasi'
  get '/car/:id', to: 'pages#car', as: 'car'
  get 'ads/mojiOglasi', to: 'ads#mojiOglasi'
  resources :mojiOglasi, only: :mojiOglasi
  get 'cars/search_results', to: 'cars#search_results', as: 'cars_search_results'

  resources :ads do
    collection do
      get :fetch_make_models
      get :fetch_make_models_new
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'dashboard/index'



  # routes.rb
  get '/car_models', to: 'car_models#index'

  # car_models_controller.rb

end
