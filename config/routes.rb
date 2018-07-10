Rails.application.routes.draw do
  resources :movies do
    resources :posts do
      get 'comments', as: 'comments'
    end
  end
  
  resources :users

  get '/login', to: "sessions#new", as: 'login'
  delete '/sessions', to: "sessions#destroy", as: 'logout'
  post '/sessions', to: "sessions#create", as: 'sessions'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
