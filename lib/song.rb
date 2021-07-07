require 'pry'
class Song

    attr_accessor :artist

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self
    end

    # reader for the name  
    def name 
        @name
    end 
    
    def self.all
        @@all
    end 

    def artist_name
        # the name of artist self.artist.name
        # the artist self.artist 
        unless self.artist
            return nil
        else self.artist.name
        end 
    end

end
# binding.pry