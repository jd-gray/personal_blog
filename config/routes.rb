Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :posts, only: [:show]
  resources :projects

  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
