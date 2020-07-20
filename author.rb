class Author
  @@all = []

  def initialize
    Author.all << self
  end

  def self.all
    @@all
  end

  def author_book_pairs
    AuthorBook.all.select { |pair| pair.author == self }
  end

  def books
    author_book_pairs.map(&:book)
  end

  def book_count
    books.count
  end

  def total_words
    books.sum { |book| book.word_count }
  end
  
  def self.most_words
    all.group_by { |author| author.total_words }.max.last
  end
  
  def write_book(title, word_count)
    new_book = Book.new(title, word_count)
    AuthorBook.new(self, new_book)
  end

  def add_book(book)
    AuthorBook.new(self, book)
  end

end