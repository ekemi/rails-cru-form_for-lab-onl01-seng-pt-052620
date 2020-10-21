class SongsController < ApplicationController

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)

  end
end
