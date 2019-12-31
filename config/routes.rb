Rails.application.routes.draw do
  devise_for :users

  root 'tweets#index'
  root to: "tweets#index"

  resources :tweets
  resources :users
  resources :follows
  resources :goods
  resources :bads
  resources :tags
  resources :bookmarks

  namespace :admin do
    resources :users
    resources :follows
    resources :admins
    resources :tweets
    resources :goods
    resources :bads
  end

  get 'admin/index'

  get 'welcome/index'
  get 'tweets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end