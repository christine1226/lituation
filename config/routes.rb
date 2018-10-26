Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :events, only: [:new, :create, :update, :edit, :destroy]
  resources :categories, only: [:index]


  #sessions paths
  get '/', to: 'home#page'
  get '/signup', to: 'users#new'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  post '/categories/likes/:id', to: 'likes#create_like', as: 'new_like'
end
