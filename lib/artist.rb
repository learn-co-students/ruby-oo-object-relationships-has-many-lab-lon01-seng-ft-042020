require 'pry'
class Artist

    attr_accessor :name
    

    def initialize(name)
        @name = name 
       
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end 
    end 
    
    #add the song to the Artist collection
    def add_song(song)
        song.artist = self 
        #binding.pry
    end 

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end 

    def self.song_count
        Song.all.count do |song|
            song.artist = self 
        end 
        
    end

end

class Artist

    attr_accessor :name
    attr_reader :song #without it 

    def initialize(name)
        @name = name 
        @song = [] #without it
    end

    # has many songs, I need to create 
    # class method that returns an array
    # of all song instances that have been created 
    def songs
        Song.all.select do |song|
            song.artist == self 
        end 
    end 
    
    #add the song to the Artist collection
    def add_song(song)
        # I hava class varaible @@all in Song class
        # the song is adding to self (refering to the 
        # Artist)
        # adds that song to the artist's collection
        # HOW??? 
        @song << song # without it
        song.artist = self 
        #binding.pry
    end 

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end 

    def self.song_count
        Song.all.count do |song|
            song.artist = self #??
        end   
    end

end