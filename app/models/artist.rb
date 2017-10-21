class Artist < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :songs, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :genre, presence:true
 validates :nationality, presence: true


end
