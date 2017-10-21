require "rails_helper"

feature "Manage tasks", js: true do
  scenario "delete composition" do
    visit artists_path(@artist)

      fill_in "artist_song_name", with: "Fur Elise"
        page.execute_script("$('form').submit()")
      expect(page).to have_content("Fur Elise")


  end
end
