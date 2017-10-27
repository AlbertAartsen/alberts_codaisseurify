class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    songs = Song.all
    render status: 200, json: songs
  end

  def show
    song = Song.find(params[:id])
    render status: 200, json: song
  end

  def create
    song = Song.new(song_params)

    if song.save
       render status: 200, json: song
        message: "Composition Created"
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Composition Deleted"
    }.to_json
  end

  def destroy_all
    artist = Artist.find(params[:id])
    songs = artist.songs
    songs.destroy_all

    render status: 200, json: {
      message: "Deleted All Compositions of this Composer"
    }.to_json

  end

  private

  def song_params
    params.require(:song).permit(:name, :length, :year, :artist_id)
  end

end
