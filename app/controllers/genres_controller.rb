class GenresController < ApplicationController
  def show
      @genre = Genre.find(params[:id])
  end

  def edit
     @genre = Genre.find(params[:id])
  end

  def new
     @genre = Genre.new
  end

  def create
     @genre = Genre.create(params_genre)
     redirect_to artist_path(@genre)
  end

  def update

    @genre = Genre.find(params[:id])
    @genre.update(params_genre)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
     params.require(:genre).permit(:name)
  end

end
