Rails.application.routes.draw do
  namespace :admin do
    resources :dashboard, only: [:index]
  end
  namespace :profile do
    resources :dashboard, only: [:index]
  end

  devise_for :admins, path: "admin"
  devise_for :users, path: "profile"
  root to: 'landing#index'

end
