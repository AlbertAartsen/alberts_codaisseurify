class ArtistSerializer < ActiveModel::Serializer
  has_many :songs
  has_many :photos

  attributes :id, :first_name, :last_name, :genre, :nationality
end
