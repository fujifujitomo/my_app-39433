Rails.application.routes.draw do
  devise_for :users
  
  resources :pets, only: [:index, :new, :create]
  get '/pets/index'
end
