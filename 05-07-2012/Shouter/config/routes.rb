Shouter::Application.routes.draw do
  root to: "shouts#index"
  resources :shouts, only: [:index, :create]
  resources :users, only: [:create, :show]
  resource :session, only: [:create]
  get "sign_up" => "users#new"
  get "sign_in" => "sessions#new"
  delete "sign_out" => "sessions#destroy"
end
