Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  resource :user, only: [:edit, :update]
  
  get 'pages/info'
  resources :people
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'ideas#index'
  get 'pages/info'
end
