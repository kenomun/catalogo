class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      flash[:success] = 'Documental agregado exitosamente.'
      redirect_to documentary_films_path
    else
      flash[:alert] = 'Error al agregar la nuevo Documental.'
      redirect_back(fallback_location: new_documentary_film_path)
    end  
  end

  private

  def documentary_film_params
    params.require(:documentary_film)
      .permit(
        :name,
        :synopsis,
        :director
      )
  end
end
