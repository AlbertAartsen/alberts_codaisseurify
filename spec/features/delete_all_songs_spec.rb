require "rails_helper"

feature "All Songs Delete ", js: true do
  background do
      visit artist_path(artist)

      page.find("#delete-all-compositions").click

    expect (artist.songs.count).to change(Song, :count).to eq 0
  end
end
