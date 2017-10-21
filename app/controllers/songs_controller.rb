class SongsController < ApplicationController

def index
  @artist = Artist.find(params[:artist_id])
  @songs = @artist.songs
end

def show
  @song = Song.find(params[:id])
end

def new
  @artist = Artist.find(params[:artist_id])
  @song = Song.new
end

def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to @artist
    else
      render 'new'
    end
end

def edit
  @song = Song.find(params[:id])
end

def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artists_path(@song.artist_id)
end

private

def song_params
  params.require(:song).permit(:name, :length, :year)
end

end
