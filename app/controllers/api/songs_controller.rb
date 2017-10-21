class Api::SongsController < ApplicationController
  def index
    songs = Song.all
    render status: 200, json: songs
  end

  def show
    song = Song.find(params[:id])
    render status: 200, json: song
  end

  def create
    song = @artist.song.new(song_params)

    if song.save
       render status: 200, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = @artist.song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Composition Deleted"
    }.to_json
  end

  private

  def song_params
    params.require(:song).permit(:name, :length, :year)
  end

  def set_artist
      @artist = Artist.find(params[:artist_id])
    end

end
