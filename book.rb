class Book
  attr_reader :title, :author
  @@all = []

  def initialize(title, author)
    @title = title
    @author = author
    Book.all << self
  end

  def self.all
    @@all
  end
end
