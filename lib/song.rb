require 'pry'

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
        final_count = {}

        @@genres.each {|genre| 
            if final_count[genre]
                final_count[genre] += 1
            elsif !final_count[genre]
                final_count[genre] = 1
            end
    }
    final_count
    end

    def self.artist_count
        final_count = {}

        @@artists.each {|artist| 
            if final_count[artist]
                final_count[artist] += 1
            elsif !final_count[artist]
                final_count[artist] = 1
            end
        }
    final_count
    end 

end








