class Author

    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    # to create that instance method, the @@all needs
    # to be created first
    def posts
        Post.all.select { |post| post.author == self} #??? ==
    end     

    def add_post(post)
        post.author = self 
    end 

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        new_post
    end 

    def self.post_count
        Post.all.count do |post|
            post.author = self 
        end 
    end 
    
end