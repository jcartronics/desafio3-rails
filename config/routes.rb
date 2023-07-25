Rails.application.routes.draw do

  get "/series", to: "series#index"
  get "/series/new", to: "series#new"
  get "/series/:id", to: "series#show"
  post "/series", to: "series#create"

  get "/movies", to: "movies#index"
  get "/movies/new", to: "movies#new"
  get "/movies/:id", to: "movies#show"
  post "/movies", to: "movies#create"

  get "/documentary_films", to: "documentary_films#index"
  get "/documentary_films/new", to: "documentary_films#new"
  get "/documentary_films/:id", to: "documentary_films#show"
  post "documentary_films", to: "documentary_films#create"

end
  # root "articles#index"
