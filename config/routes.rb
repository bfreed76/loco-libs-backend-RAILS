Rails.application.routes.draw do
  resources :words, only: [:index]
  resources :users, only: [:index]
  resources :stories, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
