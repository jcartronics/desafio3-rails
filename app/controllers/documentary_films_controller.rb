class DocumentaryFilmsController < ApplicationController
  # lista todas los documentales
  def index
    @documentary_films = DocumentaryFilm.all
  end

  # muestra un documental
  def show
    @documentary_film = DocumentaryFilm.find(params[:id])
  end

  # instancia un nuevo documental
  def new
    @documentary_film = DocumentaryFilm.new
  end

  # crea un nuevo documental
  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      redirect_to documentary_films_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  # metodo para definir los parametros que se van a permitir
  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end