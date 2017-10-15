class ArtistsController < ApplicationController

def index
  @artists = Artist.all
  @photos = Photo.all
end

def show
  @artist = Artist.find(params[:id])

end

def new
  @artist = Artist.new
end

  def create
  artist_params = params.require(:artist).permit(:first_name, :last_name, :genre, :nationality)

    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
end

def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end
end
