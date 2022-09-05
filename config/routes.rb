Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :companies
  resources :offers do
    resources :applications, only: :new
  end
  resources :applications, except: :new
  resources :reviews, only: %i[new create]
  resources :assistants do
    resources :chatrooms, only: %i[new create]
  end
  resources :chatrooms, only: :show do
    resources :mensajes, only: %i[new create]
  end
end
