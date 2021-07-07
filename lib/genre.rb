class Genre
    attr_accessor :name
    
    def initialize(name)
        @name = name
        self.class.all << self
    end
    
    @@all = []

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        songs.map { |song| song.artist }
    end

    def self.all
        @@all
    end

end