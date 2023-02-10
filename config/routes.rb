Rails.application.routes.draw do
  get 'park_assets/index'
  get 'park_assets/show'
=begin
    get 'park_assets/index'
    get 'park_assets/show'
    get 'park_spaces/index'
    get 'park_spaces/show'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
=end

  resources :park_spaces, only: [:index, :show]
  resources :park_assets, only: [:index, :show]
  end
