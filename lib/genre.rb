class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre
        end
    end

    def artists
        songs = Song.all.select do |song|
            song.genre == self
        end
        artists = songs.map do |song|
            song.artist
        end
        artists
    end



    def self.all
        @@all
    end








end