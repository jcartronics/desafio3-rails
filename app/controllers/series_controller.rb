class SeriesController < ApplicationController
  # lista todas las series
  def index
    @series = Serie.all
  end

  # instancia una nueva serie
  def new
    @serie = Serie.new
  end

  # crea una nueva serie
  def create
    @serie = Serie.new(series_params)

    if @serie.save
      redirect_to @serie
    else
      render "new"
    end
  end

  private

  # metodo para definir los parametros que se van a permitir
  def series_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
