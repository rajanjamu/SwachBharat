Rails.application.routes.draw do
  # App routes
  resources :users
  root to: 'home#home', via: :get
  get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'

  resources :marks 
  resources :cleans
  get 'login' => 'sessions#login'
  get 'dashboard' => 'home#dashboard'
  
  get 'about'=>'home#about'

  resources "contacts", only: [:new, :create]
  get 'contact'=>'contacts#new'

  # OmniAuth Routes
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  # end

  get 'home' => 'home#home'
end
