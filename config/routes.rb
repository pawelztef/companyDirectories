Rails.application.routes.draw do
  namespace :admin do
    resources :dashboard, only: [:index]
  end
  resources :users

  devise_for :admins, path: "admin"
  devise_for :users, path_prefix: 'd'
  root to: 'landing#index'

end
