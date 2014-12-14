Rails.application.routes.draw do




  # App routes
  resources :users
  root to: 'home#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'

  # OmniAuth Routes
  get 'auth/facebook/callback', to: 'home#dashboard'
  
  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'
end
