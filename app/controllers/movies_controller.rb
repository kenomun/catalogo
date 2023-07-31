class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    puts movie_params.inspect
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:success] = 'Película agregada exitosamente.'
      redirect_to root_path
    else
      flash[:alert] = 'Error al agregar la nueva película.'
      redirect_back(fallback_location: new_movie_path)   
    end
  end

  private

  def movie_params
    params.require(:movie)
      .permit(
        :name,
        :synopsis,
        :director
      )
  end
end
