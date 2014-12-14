Rails.application.routes.draw do

  get 'home/index'
  get 'home/dashboard'
  get 'home/sample'


  # App routes
  resources :users
  root to: 'home#sample', via: :get

  # OmniAuth Routes
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'home#dashboard'
  
  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'
end
