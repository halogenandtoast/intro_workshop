Shouter::Application.routes.draw do
  resources :shouts, :only => [:index, :create]
  resources :users, :only => [:new, :create]

  # get "shouts" => "shouts#index"
  # post "shouts" => "shouts#create"
  # get "shouts/new" => "shouts#new"
  # get "shouts/edit" => "shouts#edit"
  # get "shouts/:id" => "shouts#show"
  # put "shouts/:id" => "shouts#update"
  # delete "shouts/:id" => "shouts#destroy"
end
