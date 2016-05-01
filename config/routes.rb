Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
end
