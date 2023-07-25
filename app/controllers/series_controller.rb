class SeriesController < ApplicationController
  # lista todas las series
  def index
    @series = Serie.all
  end

  # crea una nueva serie
  def create
    @series = Serie.new(series_params)

    if @series.save
      redirect_to @series
    else
      render "new"
    end
  end

  # instancia una nueva serie
  def new
    @series = Serie.new
  end

  private

  # metodo para definir los parametros que se van a permitir
  def series_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
