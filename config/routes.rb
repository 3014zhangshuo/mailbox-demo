Rails.application.routes.draw do
  devise_for :users
  resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
  end
end
  resources :messages, only: [:new, :create]
  root "conversations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
