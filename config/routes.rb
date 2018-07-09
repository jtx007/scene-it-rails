Rails.application.routes.draw do
  resources :watch_movies
  resources :movies
  resources :watchlists
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
