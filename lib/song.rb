require 'pry'
class Song
    @@all = []

    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    attr_accessor :artist, :name

    def self.all
        @@all
    end

    def self.add_song_by_name(title)
        Song.new(title)
    end

    def artist_name
        if self.artist
            self.artist.name
        else
            nil
        end
    end

    def self.find_songs_by_artist(artist_name)
        self.all.select do |song| song.artist == artist_name 
        end
    end
end