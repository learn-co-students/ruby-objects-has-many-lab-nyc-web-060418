require 'pry'

class Author

  attr_accessor :name

  @@posts = []


  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts.push(post)
    post.author = self
  end

  def add_post_by_title (title)
    new_title = Post.new(title)
    new_title.author = self
    @@posts.push(new_title)
  end

  def self.post_count
    @@posts.length
  end

end
