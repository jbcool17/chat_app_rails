Rails.application.routes.draw do
	get 'react/index'
  get 'react/users'
  get 'react/channels'
  get 'react/messages'

  resources :users
  resources :messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
