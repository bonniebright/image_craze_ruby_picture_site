ImageCraze::Application.routes.draw do
  root :to => 'users#index'
  resources :users
  resources :sessions
  resources :photos
end
