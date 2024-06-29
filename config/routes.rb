Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions'
  }
  root to: 'users#index'
  resources :users
  resources :torisetsus do
    resources :introductions
    resources :lifes
    resources :works
    resources :schools
    resources :partners
    resources :hobbys
  end
end
