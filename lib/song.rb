require "pry"
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count 
        hash = {}
        @@genres.uniq.each do |key|
            hash[key] = @@genres.count(key)
        end
        hash
    end
    def self.artist_count 
        hash = {}
        @@artists.uniq.each do |key|
            hash[key] = @@artists.count(key)
        end
        hash
    end
end