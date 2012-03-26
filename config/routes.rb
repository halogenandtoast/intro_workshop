Shouter::Application.routes.draw do
  resources :shouts, :only => [:index]
end
