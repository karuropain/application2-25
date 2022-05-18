Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about', to: 'homes#about', as: 'homes_about'
  devise_for :users
  resources :books, only: [:index, :show]
  resources :users, only: [:index, :show, :edit]
end
