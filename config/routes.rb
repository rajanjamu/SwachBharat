Rails.application.routes.draw do




  # App routes
  resources :users
<<<<<<< HEAD
  root to: 'home#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'
=======
  root to: 'home#sample', via: :get
>>>>>>> 12afc231d7703a098a93e933f830a143ee07eb9e

  # OmniAuth Routes
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'home#dashboard'
  
  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'
end
