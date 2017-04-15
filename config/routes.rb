Test::Application.routes.draw do
  # get 'users/new'
  #
  # get 'sessions/new'


  root to: 'users#new'
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  get 'sign_up' => 'users#new', :as => 'sign_up'
  get 'log_in' => 'sessions#new', :as => 'log_in'
  resources :users
  resources :sessions
end
