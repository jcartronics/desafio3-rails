class MoviesController < ApplicationController
 # lista todas las peliculas
 def index
  @movies = Movies.all
end

# crea una nueva pelicula
def create
  @movies = Movies.new(movies_params)

  if @movies.save
    redirect_to @movies
  else
    render 'new'
  end
end

# instancia una nueva pelicula
def new
  @movies = Movies.new
end

private

# metodo para definir los parametros que se van a permitir
def movies_params
  params.require(:movies).permit(:name, :synopsis, :director)
end
end
