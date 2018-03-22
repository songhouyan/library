Rails.application.routes.draw do
  

  root 'static_pages#home'
  
  devise_for :users
  resources :books
  get 'search', to: 'books#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
