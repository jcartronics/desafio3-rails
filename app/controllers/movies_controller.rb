class MoviesController < ApplicationController
  # lista todas las movies
  def index
    @movies = Movie.all
  end

  # muestra una movie
  def show
    @movie = Movie.find(params[:id])
  end

  # instancia una nueva movie
  def new
    @movie = Movie.new
  end

  # crea una nueva movie
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  # metodo para definir los parametros que se van a permitir
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end

