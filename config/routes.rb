Rails.application.routes.draw do
  root 'welcome#index'

  # RESOURCES
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships

  # GET
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friends', to: 'user#search'

  # POST
  post 'add_friend', to: 'user#add_friend'

end
