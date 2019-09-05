Rails.application.routes.draw do
 root to: 'pages#home'
  devise_for :users
  get 'badges/completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges do
    resources :trackers, only: [:create, :destroy, :update, :show]
  end

  get 'dashboard', to: 'pages#dashboard'

  patch "trackers/:id/update_tracker_days", to: "trackers#update_tracker_days", as: :update_tracker_days

  resources :friendships, only: [:create]
end
