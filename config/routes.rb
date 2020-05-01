Rails.application.routes.draw do
  resources :artist_instruments, only: [:new, :create] 
  resources :instruments, only: [:index]
  resources :artists, only: [:new, :create, :show, :index]
end
