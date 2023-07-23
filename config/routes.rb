Rails.application.routes.draw do
  devise_for :users
  
  resources :pets, only: [:index, :new, :create]
  get '/pets/index'
  root to: "writes#new"
  resources :pets, only: [:new, :show]
  resources :writes, only: [:index, :new, :show]
end
