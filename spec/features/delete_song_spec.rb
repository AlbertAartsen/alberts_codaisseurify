require "rails_helper"

feature "Delete one song", js: true do
  let(:artist) { create :artist }
  let!(:song1) { create :song , artist: artist, name: 'bob' }


  scenario "remove single song from showpage" do
    visit artist_path(artist)
      page.find(".delete-song").click
       expect(page).not_to have_content('bob')
  end
end
