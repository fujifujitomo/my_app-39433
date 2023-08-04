Rails.application.routes.draw do
  devise_for :users
  
  resources :pets, only: [:index, :new, :create, :show]
  
  root to: "writes#new"
  resources :writes, only: [:index, :new, :create, :show]
end
