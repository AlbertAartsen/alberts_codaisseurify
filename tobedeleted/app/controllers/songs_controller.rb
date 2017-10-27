class SongsController < ApplicationController

def index
  @songs = Song.all
end

def show
  @song = Song.find(params[:id])
end

def new
  @song = Song.new
end

def create
  song_params = params.require(:song).permit(:name, :length, :year, :artist_id)

    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
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

    redirect_to artists_path
end
end
