class Book
  attr_reader :title, :word_count
  @@all = []

  def initialize(title, word_count)
    @title = title
    @word_count = word_count
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
