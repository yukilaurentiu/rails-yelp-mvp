Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
