Rails.application.routes.draw do

  get "/series", to: "series#index", as: 'series'
  get "/series/new", to: "series#new", as: 'new_serie'
  post "/series", to: "series#create"
  get "/series/:id", to: "series#show", as: 'serie'

  get "/movies", to: "movies#index", as: 'movies'
  get "/movies/new", to: "movies#new", as: 'new_movie'
  post "/movies", to: "movies#create"
  get "/movies/:id", to: "movies#show", as: 'movie'
  
  get "/documentary_films", to: "documentary_films#index", as: "documentary_films"
  get "/documentary_films/new", to: "documentary_films#new", as: "new_documentary_film"
  post "documentary_films", to: "documentary_films#create"
  get "/documentary_films/:id", to: "documentary_films#show", as: "documentary_film"

end
  # root "articles#index"
