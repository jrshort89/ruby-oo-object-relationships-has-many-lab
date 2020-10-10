class Post
    @@all = []

    def initialize(title)
        @title = title
        @author = nil
        @@all << self
    end

    attr_accessor :author, :title

    def self.all
        @@all
    end

    def self.add_post_by_title(title)
        Post.new(title)
    end

    def author_name
        self.author ? self.author.name : nil
    end

    def self.find_posts_by_author(author)
        self.all.select { |post| author == post.author }
    end
end