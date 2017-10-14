class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
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

  def edit
    @artist = Artist.find(params[:id])
  end



end
