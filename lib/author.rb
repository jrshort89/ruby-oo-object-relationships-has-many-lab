require 'pry'
class Author
    def initialize(name)
        @name = name
    end

    attr_accessor :name

    def posts
        Post.find_posts_by_author(self)
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.add_post_by_title(title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end