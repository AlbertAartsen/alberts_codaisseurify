class Api::SongsController < ApplicationController
  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def show
    song = Song.find(params[:id])

    render status: 200, json: {
      song: song
    }.to_json
  end

  def create
    song = @artist.song.new(song_params)

    if song.save
      render status: 201, json: {
        message: "Composition Saved",
        song: song
      }.to_json
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
