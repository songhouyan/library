Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users

  resources :books
  resources :users, only: [:index]
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
end
