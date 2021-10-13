# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users

  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
