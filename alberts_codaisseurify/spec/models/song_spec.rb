require 'rails_helper'

RSpec.describe Song, type: :model do

  describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(name: "Composition")

    expect(song.artist).to eq(artist)
  end
end
end
