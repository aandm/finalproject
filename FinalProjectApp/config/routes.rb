FinalProjectApp::Application.routes.draw do

  resources :group_members


  resources :groups


  resources :subscriptions


  resources :comments


  root to: 'journal#index'

  resources :posts
  resources :users

  get '/sign_in' => 'sessions#new', :as => :login
  get '/sign_out' => 'sessions#destroy', :as => :logout
  post '/sessions' => 'sessions#create'

  get "/followers" => 'subscriptions#followers', :as => :followers

  get "/friends" => 'posts#friendposts', :as => :friends

  get "/:vieweduser" => 'posts#index', :as => :view

  end
