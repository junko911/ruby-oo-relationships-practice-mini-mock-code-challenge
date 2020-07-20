class Book
  attr_reader :title, :author, :word_count
  @@all = []

  def initialize(title, author, word_count)
    @title = title
    @author = author
    @word_count = word_count
    AuthorBook.new(author, self)
    Book.all << self
  end

  def self.all
    @@all
  end

  def add_author(author)
    AuthorBook.new(author, self)
  end

  def author_book_pairs
    AuthorBook.all.select { |pair| pair.book == self }
  end

  def authors
    author_book_pairs.map(&:author)
  end

end
