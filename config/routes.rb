Rails.application.routes.draw do
  devise_for :users
  root to: "writes#index"
  resources :pets, only: [:new, :show]
  resources :writes, only: [:index, :new, :show]

end
