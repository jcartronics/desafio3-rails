class DocumentaryFilmsController < ApplicationController

  # lista todos los documentales
  def index
    @documentary_films = DocumentaryFilm.all
  end

  # crea un nuevo documental
  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      redirect_to @documentary_film
    else
      render 'new'
    end
  end

  # instancia un nuevo documental
  def new
    @documentary_film = DocumentaryFilm.new
  end

  private

  # metodo para definir los parametros que se van a permitir
  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end