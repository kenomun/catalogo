class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)

    if @serie.save
      flash[:success] = 'Serie agregada exitosamente.'
      redirect_to series_index_path
    else
      flash[:alert] = 'Error al agregar la nueva Serie.'
      redirect_back(fallback_location: new_series_path)   
    end
  end

  private

  def serie_params
    params.require(:serie)
      .permit(
        :name,
        :synopsis,
        :director
      )
  end
end
