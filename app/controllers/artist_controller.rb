class AtristController <ApplicationController

def create
  @artist = Artist.create(artist_params)
  redirect_to artist_path(@artist)
end
private
def artist_params
  params.require(:artists).permit(:name,:bio)
end
def show
@artist = Artist.find(params[:id])
end
def new
  @artist = Artist.new
end

def edit
@artist = Artist.find(params[:id])
end
def update
@artist = Artist.find(params[:id])
@artist.update(artist_params)
redirect_to artist_path(@artist)
end
end
