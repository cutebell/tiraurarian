Rails.application.routes.draw do

  get 'info/index'

  get 'info/howtouse'

  get 'info/termsofservice'

  get 'info/privacypolicy'

  get 'info/whatisvarth'

  devise_for :users

  root 'tweets#index'
  root to: "tweets#index"

  resources :tweets
  resources :tags
  resources :bookmarks
  resources :goods
  resources :bads

  resources :mypage
  resources :search

  resources :users
  resources :follows
  resources :mutes

  resources :notices
  resources :messages

  resources :card_boxes
  resources :cards
  resources :card_decks

  get 'info/index'
  get 'info/how-to-use'
  get 'info/terms-of-service'
  get 'info/privacy-policy'
  get 'info/what-is-varth'

  resources :points do
    collection do
      get 'remit'
      post 'remit'
    end
  end

  resources :controls

  namespace :admin do
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

    root to: "controls#index"
  end

  get 'admin/index'

  get 'welcome/index'
  get 'tweets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
