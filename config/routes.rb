Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :homes, only: [:top, :about]
  resources :books, only: [:index, :show]
  resources :users, only: [:show, :edit]
end
