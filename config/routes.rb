Rails.application.routes.draw do
  resources :movies
    resources :posts do
      resources :comments
    end


  resources :users

  get '/login', to: "sessions#new", as: 'login'
  delete '/sessions', to: "sessions#destroy", as: 'logout'
  post '/sessions', to: "sessions#create", as: 'sessions'
  root 'application#welcome'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
