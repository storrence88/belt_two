class Song < ActiveRecord::Base
    has_many :users_liked, through: :playlists, source: :user

    validates :artist, :title, presence: true
    validates :artist, :title, length: { minimum: 2 }
end
