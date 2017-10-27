require 'rails_helper'

describe "Index shows list of Artists" do

  let!(:artist1) { create :artist, last_name: "Composer 1" }
  let!(:artist2) { create :artist, last_name: "Composer 2" }

  it "shows all all artists" do
    visit root_url

    expect(page).to have_text("Composer 1")
    expect(page).to have_text("Composer 2")
  end


end
