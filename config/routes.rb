Rails.application.routes.draw do

  get 'home/index'
  get 'home/dashboard'
  get 'home/sample'


  # App routes
  resources :users
  root to: 'home#sample', via: :get
  
  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

end
