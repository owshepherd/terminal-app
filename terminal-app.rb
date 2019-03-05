require 'pry'

class Author
    attr_accessor :name, :books
    def initialize (name)
        @name = name
        @books = []
    end

    def add_book (book) # Asterisks is used to add multiple parameters
        @books << book
    end

    def display
        puts "#{@name} #{@books}"
    end
end

class Book
    def initialize (title) #maybe change to title
        @title = title
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

# binding.pry

# search_results = book_array.select { |i| i.search (search_term) }
# puts search_results

book_array.each do |i|
    if i.name.include?(search_term)
        puts i.name
        i.books.each do |x|
            puts x
        end
    end
end

# if book_array.include?(search_term)
#     print "Butt"
# end

# def recommend (title, author, keyword)
# end

# user = {
#     user_name: name
#     books_read_by_user: []
#     authors_read_by_user: []
#     user_likes_these_genres: []
# }


# class User
#     attr_accessor :name, :books, :authors, :genres
#     def initialize(user_name, user_books, user_authors, user_genres)
#     	@name = user_name
#     	@books = user_books
#     	@authors = user_authors
#     	@genres = user_genres
#     end
# end

# def create_user_name ()
#     puts "Enter a user name"
#     user_name = gets.chomp
        
#     return user_name
# end

# def user_book_input()
#     new_book_input = ""
#     user_books = []
    
#     while new_book_input != "q"
#         puts "Enter the Title of a book you have read or type 'q' to quit"
#         user_book_input = gets.chomp
#         user_books<<new_book_input
#     end

#     return user_books
# end

# def user_author_input()
#     new_author_input = ""
#     user_authors = []
    
#     while new_author_input != "q"
#         puts "Enter the name of an Author you have read or type 'q' to quit"
#         user_author_input = gets.chomp
#         user_authors<<new_author_input
#     end    
    
#     return user_authors
# end

# def user_genre_input()
#     new_genre_input = ""
#     user_genres = []
    
#     while user_genre_input != "q" 
#         puts "Enter a Genre you enjoy reading or type 'q' to quit"
#         user_genre_input = gets.chomp
#         user_genres<<user_genre_input
#     end
    
#     return user_genres
# end

# User.new(
#     user_name =  @user_name,
#     user_books = @user_books,
#     user_authors = @user_authors,
# 		user_genres = @user_genres
# )
    
# Parameters are as follows in this order: user_name, user_books, user_authors, user_genres)
# # user_library = [
# # user1 = User.new("Wade", 
# # ["Dracula", "Harry Potter", "Name of the Wind", "Dirt Music" ], 
# # ["Bram Stoker", "JK Rowling", "Patrick Rothfuss", "Tim Winton"], 
# # ["Horror", "Science Fiction", "Fanatsy", "Australian"])
# # user2 = User.new("Owen", 
# # [], 
# # [], 
# # [])
# # ]

# def recommend (title, author, keyword)
# >>>>>>> b8694e8e1aa883fedfd686536b4f1abc40310da4

# end