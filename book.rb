class Book
  attr_reader :title, :author, :word_count
  @@all = []

  def initialize(title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    Book.all << self
  end

  def self.all
    @@all
  end

  #Many-to-many relationship methods

  def add_author(author)
    AuthorBook.new(author, self)
  end

  def authors
    pair = AuthorBook.all.select { |pair| pair.book == self }
    pair.map(&:author)
  end

end
