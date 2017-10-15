require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe Artist do
    describe "#full_name" do
      let(:artist) {create :artist, first_name: "Lorem", last_name: "de Ipsum"}

      it "is composed of first and last name" do
        profile = build(:artist, first_name: "Lorem", last_name: "de Ipsum")
        expect(artist.full_name).to eq "Lorem de Ipsum"
      end
    end
  end

  describe "association with song" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new(name: "composition1")
    song2 = artist.songs.new(name: "composition2")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(Song, :count).by(-1)
  end
end
end
