
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@genres << self.genre
        @@artists << self.artist
        @@count += 1
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |item|
            if genre_count[item]
                genre_count[item] += 1
            else
                genre_count[item] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |item|
            if artist_count[item]
                artist_count[item] += 1
            else
                artist_count[item] = 1
            end
        end
        artist_count
    end    

end
