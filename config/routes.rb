Rails.application.routes.draw do

  root to: 'visitors#index'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  resources :vehicles
  resources :campers

  namespace :admin do
    resources :users
    resources :vehicles
    resources :campers
  end
end
