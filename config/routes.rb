Rails.application.routes.draw do
  # get 'chat_rooms/index'

  # get 'chat_rooms/new'
  resources :chat_rooms, only: [:index, :new]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
