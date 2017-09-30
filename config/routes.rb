Rails.application.routes.draw do

  resources :chat_rooms, only: [:index, :new, :create, :show]
  devise_for :users
  
  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
