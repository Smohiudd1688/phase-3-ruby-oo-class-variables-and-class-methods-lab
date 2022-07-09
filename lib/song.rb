require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists.push(artist)
        @@genres.push(genre)
        #binding.pry
        @@artist_count["#{artist}"] == nil ? @@artist_count["#{artist}"] = 1 : @@artist_count["#{artist}"] += 1
        @@genre_count["#{genre}"] == nil ? @@genre_count["#{genre}"] = 1 : @@genre_count["#{genre}"] += 1
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq {|art| art} 
    end

    def self.genres
        @@genres.uniq {|gen| gen}
    end

    def self.artist_count
        @@artist_count
    end

    def self.genre_count
        @@genre_count
    end

end

#binding.pry