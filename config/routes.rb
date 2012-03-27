Shouter::Application.routes.draw do
  root :to => "shouts#index"
  resources :shouts, :only => [:index, :create]
  resources :users, :only => [:new, :create]

  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  get "sign_up" => "users#new"

  # get "shouts" => "shouts#index"
  # post "shouts" => "shouts#create"
  # get "shouts/new" => "shouts#new"
  # get "shouts/edit" => "shouts#edit"
  # get "shouts/:id" => "shouts#show"
  # put "shouts/:id" => "shouts#update"
  # delete "shouts/:id" => "shouts#destroy"
end
