class ArtistsController < ApplicationController

def index
  @artists = Artist.all
  @photos = Photo.all
end

def show
  @artist = Artist.find(params[:id])
  @songs = @artist.songs
end

def new
  @artist = Artist.find(params[:id])
  @songs = @artist.songs
end

def full_name
  "#{first_name} #{last_name}"
end

def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  
  end
end
