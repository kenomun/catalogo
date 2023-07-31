Rails.application.routes.draw do
  # get 'documentary_films/index'
  # get 'documentary_films/new'
  # get 'documentary_films/create'
  # get 'series/index'
  # get 'series/new'
  # get 'series/create'
  # get 'movies/index'
  # get 'movies/new'
  # get 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :movies, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :documentary_films, only: [:index, :new, :create]

  root 'movies#index'

  
end
