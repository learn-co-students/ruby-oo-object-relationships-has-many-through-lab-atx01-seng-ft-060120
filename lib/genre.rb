class Genre
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def songs
      Song.all { |song| song.genre == self }
    end
  
    def artists
      Song.all.collect do |song|
        song.artist if song.genre == self
      end
    end
  
    def add_song(song)
      songs << song
    end
  end