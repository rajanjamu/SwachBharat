Rails.application.routes.draw do

  get 'home/index'
  get 'home/dashboard'
  get 'home/sample'


  # App routes
  resources :users
  root to: 'home#sample', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'home#dashboard'
  resources :cleans
  resources :marks

  get 'dashboard' => 'home#dashboard'
end
