ImageCraze::Application.routes.draw do
  root :to => 'welcome#index'
  resources :users
  resources :sessions
  resources :photos
end
