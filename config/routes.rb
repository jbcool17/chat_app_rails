Rails.application.routes.draw do
  # get 'chat/show'
  get '/chat/:channel/:user', to: 'chat#show', as: 'chat'

  resources :users
  resources :messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
