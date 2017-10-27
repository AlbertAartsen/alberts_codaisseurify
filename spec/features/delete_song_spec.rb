require "rails_helper"

feature "Delete one song", js: true do
  background do
      visit artist_path(artist)
    
      page.find(".delete-song").click

      expect (artist.songs.count).to change(Song, :count).by(-1)
  end
end
