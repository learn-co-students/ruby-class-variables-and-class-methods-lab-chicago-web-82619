class Song

attr_accessor :name, :artist, :genre

def initialize(name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

@@count = 0
@@genres = []
@@artists = []

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

hist = {}
  @@genres.each do |genre|
    if hist.has_key?(genre)
      hist[genre]+= 1
    else
      hist[genre] = 1
    end


  end
return hist

end


def self.artist_count

hist = {}
  @@artists.each do |artist|
    if hist.has_key?(artist)
      hist[artist]+= 1
    else
      hist[artist] = 1
    end

  end
return hist

end

end
