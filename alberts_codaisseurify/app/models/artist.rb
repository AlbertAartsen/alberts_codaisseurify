class Artist < ApplicationRecord
  has_many :photos
  has_many :songs, dependent: :destroy

end
