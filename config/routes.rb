Rails.application.routes.draw do
  get 'badges/completed'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges do
    resources :trackers, only: [:create, :destroy, :update]
  end

  get 'dashboard', to: 'pages#dashboard'


  root to: 'pages#home'

  resources :friendships, only: [:create]
end
