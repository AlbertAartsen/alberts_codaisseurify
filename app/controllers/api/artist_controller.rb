lass Api::ArtistsController < ApplicationController
  def index
    render status: 200, json: {
      rooms: Artist.all
    }.to_json
  end
end
