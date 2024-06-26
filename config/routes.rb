Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions'
  }
  root to: 'users#index'
  resources :users
  resources :torisetsus do
    resources :introductions
    resources :lifes
  end
end
