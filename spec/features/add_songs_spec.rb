require "rails_helper"

feature "Add to songs list", js:true do
  background do
      visit artist_path(artist)

      fill_in "#song_name", with: "Fur Elise"
      fill_in "#song_length", with: "34"
      fill_in "#song_year", with: "1700"
      click_link '$(#add)'

      page.execute_script("$('form').submit()")
      expect(page).to have_content("Fur Elise")
  end
end
