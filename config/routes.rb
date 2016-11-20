Rails.application.routes.draw do
  root 'chat#index'

  get '/chat/:channel/:user', to: 'chat#show', as: 'chat'
  get '/chat', to: 'chat#index'
  post '/chat', to: 'chat#create'

  resources :users
  resources :messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
