class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def intialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count+= 1
    end

    def genre_count
        genre_hash = {}
        @@genres.each do |genre|
            genre_hash[genre] ||= 0
            genre_hash[genre] += 1
        end
        genre_hash
    end
    def artist_count
        artist_hash = {}
        @@artists.each do |artist|
            artist_hash[artist] ||= 0
            artist_hash[artist] += 1
        end
        artist_hash
    end
    end
end