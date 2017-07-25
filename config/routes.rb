Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'posts/:id', to: 'posts#show', as: 'post'
  get 'tags/:tag', to: 'welcome#index', as: :tag

  root 'welcome#index'

  get '*path' => redirect('/')
end
