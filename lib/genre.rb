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
        Song.all.select {|song| song.genre == self}
    end

    def artists
        answer= []
         songs.each do |song|
            answer << song.artist
         end
         answer
    end
end


  #artists
# [#<Song:0x00007fffe5890f48 @name="99 Problems", 
# @artist=#<Artist:0x00007fffe5891038 @name="Jay-Z">, 
# @genre=#<Genre:0x00007fffe5890f98 @name="rap">>,
#  #<Song:0x00007fffe5890ef8 @name="HUMBLE", 
# @artist=#<Artist:0x00007fffe5890fe8 @name="Kendrick Lamar">,
#  @genre=#<Genre:0x00007fffe5890f98 @name="rap">>]