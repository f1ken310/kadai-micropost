Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessons#new'
  post 'login', to: 'sessons#create'
  delete 'logout', to: 'sessons#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end