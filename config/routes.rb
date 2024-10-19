Rails.application.routes.draw do
  root 'pages#home'
  get 'signup', to: 'accounts#new'
end
