class Author
    attr_accessor :author, :books
    def initialize (author)
        @author = author
        @books = []
    end

    def add_book (book) # Asterisks is used to add multiple parameters
        @books << book
    end

    def display
        puts "#{@author} #{@books}"
    end

    def search (search_term)
        if @author.include?(search_term) || @books.include?(search_term)
           p "#{@author}, #{@books}"
        end
    end
end

class Book
    def initialize (book) #maybe change to title
        @book = book
    end
end

author1 = Author.new ("Stephen King")
book1 = Book.new ("Green Mile")
book2 = Book.new ("Christine")
book3 = Book.new ("The Shining")
author1.add_book(book1)
author1.add_book(book2)
author1.add_book(book3)

author2 = Author.new ("JRR Tolkein")
book4 = Book.new ("The Hobbit")
author2.add_book(book4)

author3 = Author.new ("Some Person")
book5 = Book.new ("The Juror")
author3.add_book(book5)

book_array = [author1, author2, author3]

# book_array = [book1, book2, book3, book4]

search_term = gets.chomp
book_array.select { |array| array.search(search_term) == true }

# def recommend (title, author, keyword)
# end

# user = {
#     user_name: name
#     books_read_by_user: []
#     authors_read_by_user: []
#     user_likes_these_genres: []
# }

