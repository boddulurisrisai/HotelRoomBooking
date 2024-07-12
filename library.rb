
class Book
  attr_accessor :title, :author, :genre, :year

  def initialize(title, author, genre, year)
    @title = title
    @author = author
    @genre = genre
    @year = year
  end

  def display_info
    return "Title: #{title}, Author: #{author}, Genre: #{genre}, Year: #{year}"
  end

end

class Author
  attr_accessor :name, :bio
  
  def initialize(name, bio)
    @name = name
    @bio = bio
  end

  
end

class Borrower 
  attr_accessor :name, :borrowed_books

  def initialize(name)
    @name = name
    @borrowed_books = []
  end

  def borrow_book(book)
    @borrowed_books.push(book)
  end

  def return_book(book)
    @borrowed_books.delete(book)
  end

  def display_borrowed_books
    @borrowed_books.each { |arr| puts arr.display_info}
  end
end


class Library
  attr_accessor :books, :authors, :borrowers

  def initialize
    @books = []
    @authors = []
    @borrowers = []
  end

  def add_book(book)
    @books.push(book)
  end

  def remove_book(book)
    @books.delete(book)
  end

  def display_books
    @books.each { |arr| puts arr.display_info }
  end
  
 end
 

 book1 = Book.new("THE INDIAN ORIGIN", "Karl Marx", "Patriotic", 1754)
 book1.display_info

author1 = Author.new("Harper Lee", "Author of the classic novel 'To Kill a Mockingbird'")
borrower1 = Borrower.new("John Doe")
borrower1.borrow_book(book1)
puts "Borrowed Books"
puts borrower1.display_borrowed_books
borrower1.return_book(book1)
puts "After returning"
borrower1.display_borrowed_books

library = Library.new
library.add_book(book1)
puts library.display_books
