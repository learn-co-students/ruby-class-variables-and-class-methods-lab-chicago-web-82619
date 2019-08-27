require "pry"
class Song
    attr_accessor :name, :artist, :genre, :artist_histogram, :genre_histogram
    @@playlist = []
    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_histogram = {}
    @@genre_histogram = {}

    def initialize(name, artist, genre)
        @@playlist.push(name)
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.reduce(@@genre_histogram) { |histogram, genre|
            if histogram[genre] 
                histogram[genre] += 1
            else
                histogram[genre] = 1
            end
            histogram
        }
        @@genre_histogram.keys
    end

    def self.artists
        @@artists
        @@artists.reduce(@@artist_histogram) { |histogram, artist|
            if histogram[artist] 
                histogram[artist] += 1
            else
                histogram[artist] = 1
            end
            histogram
        }
        @@artist_histogram.keys
    end

    def self.genre_count
        @@genre_histogram
    end

    def self.artist_count
        @@artist_histogram
    end

end