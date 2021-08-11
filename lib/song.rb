class Song
    attr_accessor :name, :artist, :genre # this makes setters and getters for these

    # define class variables (global)
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist= artist
        @genre = genre

        @@count += 1
        #will need to add counters for genres and artists
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count #increment
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artist_count
        @@artists.tally
    end


    def self.genre_count
        @@genres.tally
    end

end