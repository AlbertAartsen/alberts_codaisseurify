require 'rails_helper'

describe "Artist Showpage shows list of Songs" do
  let!(:artist) {create :artist, last_name: "Composer"}

  let!(:song1) { create :song, name: "Song 1", artist: artist }
  let!(:song2) { create :song, name: "Song 2", artist: artist }

  it "shows list of all songs of artist" do
    visit artist_path(artist)

    expect(page).to have_text("Song 1")
    expect(page).to have_text("Song 2")
  end


end
