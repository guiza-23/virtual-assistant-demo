Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :assistants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  resources :companies

  resources :offers do
    resources :applications, only: :new
  end
  resources :applications, except: :new

end
