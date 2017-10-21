require "rails_helper"

feature "Manage tasks", js: true do
  scenario "delete all compositions" do
    visit artists_path(@artist)
    expect { all songs.destroy }.to change(Song, :count).to eq 0
  end
end
