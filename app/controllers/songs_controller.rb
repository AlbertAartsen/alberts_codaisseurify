class SongsController < ApplicationController

def index
  @songs = current_artist.songs
end

def show
  @song = Song.find(params[:id])
end

def new
  @song = current_artist.songs.build
end

def create
  @songs = current_artist.songs.build(song_params)

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
    @Song = Song.find(params[:id])

    @Song.destroy

    redirect_to song_path
  end


  private

  song_params = params.require(:song).permit(:name, :length, :year, :nationality)


end
