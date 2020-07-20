class AuthorBook
  attr_reader :author, :book

  def initialize(author, book)
    @author = author
    @book = book
  end
end