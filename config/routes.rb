Rails.application.routes.draw do
  root 'static_pages#home'
  
  devise_for :users
  get 'search', to: 'books#search'
  get 'profile/:username', to: 'users#show', as: :profile
  get ':username/followers', to: 'users#followers', as: :followers
  get ':username/following', to: 'users#following', as: :following
  get 'feed', to: 'books#feed'
  resources :relationships,  only: [:create, :destroy]
  resources :books
  #resources :users, only: [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index]
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  resources :requests
end
