Rails.application.routes.draw do
  root 'chat#index'

  post '/chat/user-sign-in', to: 'chat#user_sign_in', as: 'user_sign_in'
  get '/chat/:user', to: 'chat#user_home', as: 'user_home'

  post '/chat/channel-sign-in', to: 'chat#channel_sign_in', as: 'channel_sign_in'
  get '/chat/:channel/:user', to: 'chat#channel', as: 'channel'


  resources :users
  resources :messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
