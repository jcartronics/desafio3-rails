Rails.application.routes.draw do
  # Rutas movies
  get "/movies", to: "movies#index"
  get "/movies/new", to: "movies#new"
  post "/movies", to: "movies#create"
  get "/movies/:id", to: "movies#show"

  # Rutas documentary_films
  get "/documentary_films", to: "documentary_films#index"
  get "/documentary_films/new", to: "documentary_films#new"
  post "/documentary_films", to: "documentary_films#create"
  get "/documentary_films/:id", to: "documentary_films#show"

  # Rutas series
  get "/series", to: "series#index"
  get "/series/new", to: "series#new"
  post "/series", to: "series#create"
  get "/series/:id", to: "series#show"

  # root "articles#index"
end
