Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  get 'cooks/net'
  get 'cooks/plate'
  get 'cooks/pan'
  get 'cooks/dutch_oven'
  get 'cooks/other'
  get 'cooks/rank'
  get 'cooks/bookmark'
  resources :cooks do
    resource :likes, only: [:create, :destroy]
    resource :bookmarks, only: [:create, :destroy]
  end
  resources :notifications, only: :index
  root 'homes#top'
end
