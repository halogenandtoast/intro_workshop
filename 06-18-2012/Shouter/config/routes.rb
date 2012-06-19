Shouter::Application.routes.draw do
  root to: "shouts#index"
  post "sign_in" => "sessions#create"
  get "sign_in" => "sessions#new"
  get "sign_up" => "users#new"
  delete "sign_out" => "sessions#destroy"

  resources :shouts, only: [:index, :create]
  resources :users, only: [:create, :show]
  # resource :session, only: [:new, :create, :destroy]
end
