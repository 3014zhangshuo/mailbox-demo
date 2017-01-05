Rails.application.routes.draw do
  devise_for :users
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
  root "conversations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
