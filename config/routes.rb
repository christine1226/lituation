Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create, :update, :edit, :destroy]
  resources :events, only: [:new, :create, :update, :edit]
  resources :categories, only: [:index]

  #sessions paths
  get '/', to: 'home#page'
  get '/signup', to: 'users#new'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

end
