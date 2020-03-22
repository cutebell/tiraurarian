Rails.application.routes.draw do

  devise_for :users

  root 'tweets#index'
  root to: "tweets#index"

  get 'notification', to: 'application#notification'

  resources :tweets
  resources :tags
  resources :bookmarks
  resources :goods
  resources :bads

  resources :search

  resources :users
  resources :follows
  resources :mutes

  resources :notices
  resources :messages

  resources :card_boxes
  resources :cards
  resources :card_decks

  resources :points do
    collection do
      post 'remit'
    end
  end

  resources :mypage

  get 'info/index'
  get 'info/howtouse'
  get 'info/termsofservice'
  get 'info/privacypolicy'
  get 'info/whatisvarth'
  get 'info/offline'

  namespace :admin do
    resources :access_logs
    resources :controls

    resources :tweets
    resources :tags
    resources :bookmarks
    resources :goods
    resources :bads

    resources :users
    resources :follows
    resources :mutes

    resources :points

    resources :card_boxes
    resources :cards
    resources :card_decks

    resources :notices
    resources :messages

    resources :thumbs

    root to: "controls#index"
  end

  get 'admin/index'

  get 'welcome/index'
  get 'tweets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
