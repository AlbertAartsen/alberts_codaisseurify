require "rails_helper"

feature "All Songs Delete ", js: true do
  background do
    visit artist_path(artist)
    click_link 'delete-all-compositions'
  end

  given(:artist) { create :artist }

  scenario 'remove all songs from showpage' do
    expect (artist.songs.count).to change(Song, :count).to eq (0)
  end


end
