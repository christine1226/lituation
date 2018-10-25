Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create, :update, :edit, :destroy]
  resources :events, only: [:new, :create, :update, :edit]
  resources :categories, only: :index

  get '/users/:id/create_event/new', to: "users#new_event", as: "create_new_event"
  post '/users/:id/create_event', to: "users#create_event", as: "create_event"
  get 'users/:id/create_event/:id', to: "users#show", as: "create_user_event"

  #sessions paths

  get '/signup', to: 'users#new'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
