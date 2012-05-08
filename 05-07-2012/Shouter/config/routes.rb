Shouter::Application.routes.draw do
  resources :shouts, only: [:index, :create]
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create]
end
