Rails.application.routes.draw do
  root "pages#home"
  get "signup", to: "accounts#new"
  resources :accounts, except: [ :new ]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
end
