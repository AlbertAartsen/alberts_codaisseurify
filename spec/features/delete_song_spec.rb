require "rails_helper"

feature "Delete one song", js: true do
  background do
    visit artist_path(artist)
    click_link "delete-song"
  end

  given(:artist) { create :artist }

  scenario "remove single song from showpage" do
    expect (artist.songs.count).to change(Song, :count).by(-1)
  end
end
