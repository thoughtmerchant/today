Fuck::Application.routes.draw do
  root :to => 'home#index'
  resources :ratings, only: :create
end
