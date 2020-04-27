class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @posts =[]
        @@all << self
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
        self.add_post(new_post)
    end

    def posts
        @posts
    end


   def self.post_count
        Post.all.length
    end

end