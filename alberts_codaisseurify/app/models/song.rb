class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :length, presence: true
  validates :year, presence:true
  validates :artist_id, presence: true


end
