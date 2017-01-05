Rails.application.routes.draw do
  devise_for :users
  resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
    post :restore
    post :mark_as_read
  end
  collection do
    delete :empty_trash
  end
end
resources :users, only: [:index]
  resources :messages, only: [:new, :create]
  root "conversations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
