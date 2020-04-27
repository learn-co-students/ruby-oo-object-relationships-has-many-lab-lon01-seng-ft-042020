class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs =[]
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        self.add_song(new_song)
    end

    def songs
        @songs
    end


   def self.song_count
        Song.all.length
    end

end