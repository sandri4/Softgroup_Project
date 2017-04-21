Test::Application.routes.draw do
  root to: 'posts#index'

  get 'log_out' => 'sessions#destroy', as: 'log_out'
  get 'sign_up' => 'users#new', as: 'sign_up'
  get 'log_in' => 'sessions#new', as: 'log_in'
  resources :posts
  resources :users, exclude: :new
  resources :sessions, exclude: [:new, :destroy]

end
