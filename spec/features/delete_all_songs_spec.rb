require "rails_helper"

feature "All Songs Delete ", js: true do
  background do
    visit artist_path(artist)
    page.execute_script("$('form').submit()")
  end

  given(:artist) { create :artist }


  scenario 'remove all songs from showpage' do
    expect(artist.songs.count).to eq(0)
  end


end
