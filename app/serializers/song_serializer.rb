class SongSerializer < ActiveModel::Serializer
  belongs_to :artist
  attributes :id, :name, :length, :year, :artist_id
end
