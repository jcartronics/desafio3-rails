class SeriesController < ApplicationController
  # lista todas las series
  def index
    @series = Serie.all
  end

  # muestra una serie
  def show
    @serie = Serie.find(params[:id])
  end

  # instancia una nueva serie
  def new
    @serie = Serie.new
  end

  # crea una nueva serie
  def create
    @serie = Serie.new(serie_params)

    if @serie.save
      redirect_to series_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  # metodo para definir los parametros que se van a permitir
  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
