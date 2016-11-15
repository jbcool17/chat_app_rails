Rails.application.routes.draw do
  resources :users
  resources :messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
