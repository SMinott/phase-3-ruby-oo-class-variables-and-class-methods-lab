class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = [].uniq #Control for duplicates
    @@artists = [].uniq #Control for duplicates

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self #Should this be self.genres instaed of just self?
        @@artists << self #Should this be self.artists instaed of just self?
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres
    end

    def self.artist
        @@artists
    end

    def self.genre_count
        #Not sure what goes here
        @@genres.tally
    end

    def self.artist_count
        #Not sure what goes here
        @@artists.tally
    end



end

shake_it = Song.new(shake_it)