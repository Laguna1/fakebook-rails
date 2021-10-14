# frozen_string_literal: true

Rails.application.routes.draw do
 root 'users#index'
  devise_for :users
  resources :users, only: %i[index show] do
    resources :friendships, only: :create do
      collection do
        get 'accept_friend'
        get 'decline_friend'
      end
    end
  end
  resources :posts, only: %i[index show new create destroy] do
    resources :likes, only: :create
  end
  resources :comments, only: %i[new create destroy] do
    resources :likes, only: :create
  end
end
