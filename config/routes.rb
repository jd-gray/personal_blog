Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :posts, only: [:show]
  resources :projects

  root 'welcome#index'

  get '*path' => redirect('/')
end
