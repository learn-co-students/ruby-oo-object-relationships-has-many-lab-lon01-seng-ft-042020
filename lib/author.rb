class Author
    attr_accessor :name 
  
    def initialize (name)
        @name = name 
    end 

    def posts
    Post.all.select {|post | post.author == self }
    end 
    
    def add_post(posti)
        posti.author = self 
    end 

    def add_post_by_title(title)
        newpost = Post.new(title)
        newpost.author = self
    end 

    def self.post_count
        Post.all.size


    end 

end 