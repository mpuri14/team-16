Rails.application.routes.draw do

  get 'about/show'
  # Chat is visible at /chats
  resources :chats

  get '/global_chats', to: "globalchats#index"
  resources :global_chats
  
  get '/matches', to: "matches#find"

  get '/user', to: "user#show"

  get '/', to: "welcome#index"

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
  }

  get '/about', to: "about#show"

  #Login page
  # /users/login

  #Profile page
  # /user

  #Chat page
  # /chat

  #Match view page
  # /matches

  #About page
  # /about
end
