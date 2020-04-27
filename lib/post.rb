class Post
     
    @@all =[]

    attr_accessor :author
    attr_reader :title


    def initialize(title)
        @@all << self
        @title = title
    end

    def self.all
        @@all
    end 

    def author_name
        if(self.author.nil?)
            return nil 
        else 
            return self.author.name
        end 
    end 

end