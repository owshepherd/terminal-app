require 'pry'

class Author
    attr_accessor :name, :books
    def initialize (name)
        @name = name
        @books = []
    end

    def add_book (*book) # Asterisks is used to add multiple parameters
        @books << book
    end

    def display
        puts "#{@name} #{@books}"
    end
end

class Book
    attr_accessor :title, :genres
    def initialize (title)
        @title = title
        @genres = []
    end

    def add_genre (*genre)
        @genres << genre
    end
end

class Genre
    attr_accessor :genre
    def initialize (genre)
        @genre = genre
    end
end

class User
    attr_accessor :name, :liked_books, :liked_authors, :liked_genres
    def initialize (user_name)
    	@name = user_name
    	@liked_books = []
    	@liked_authors = []
    	@liked_genres = []
    end

    def add_book_to_likes (*book)
        @liked_books << book
    end

    def add_author_to_likes (*author)
        @liked_authors << author
    end

    def add_genre_to_likes (*genre)
        @liked_genres << genre
    end
end

classic = Genre.new ("Classic")
contemporary = Genre.new ("Contemporary")
crime = Genre.new ("Crime")
fantasy = Genre.new ("Fantasy")
horror = Genre.new ("Horror")
mystery = Genre.new ("Mystery")
sci_fi = Genre.new ("Science Fiction")
thriller = Genre.new ("Thriller")
young_adult = Genre.new ("Young Adult")

author1 = Author.new ("Stephen King")
book1 = Book.new ("Green Mile")
book2 = Book.new ("Christine")
book3 = Book.new ("The Shining")
author1.add_book(book1, book2, book3)
book1.add_genre(crime, fantasy)
book2.add_genre(horror)
book3.add_genre(horror, thriller)

author2 = Author.new ("JRR Tolkein")
book4 = Book.new ("The Hobbit")
author2.add_book(book4)
book4.add_genre(classic, fantasy)

author3 = Author.new ("Some Person")
book5 = Book.new ("The Juror")
author3.add_book(book5)
book5.add_genre(crime, mystery, contemporary)

author_array = [author1, author2, author3]
book_array = [book1, book2, book3, book4, book5]

search_term = gets.chomp

# Search functions for author and book
author_array.each do |author|
    if author.name.include?(search_term)
        puts "#{author.name} (author)"
    end
end

book_array.each do |book|
    if book.title.include?(search_term)
        puts "#{book.title} (book) #{book.genres}"
    end
end

def recommend (title, author, keyword)
end

user = {
    user_name: name
    books_read_by_user: []
    authors_read_by_user: []
    user_likes_these_genres: []
}

def create_user_name ()
    puts "Enter a user name"
    user_name = gets.chomp
        
    return user_name
end

def user_book_input()
    new_book_input = ""
    user_books = []
    
    while new_book_input != "q"
        puts "Enter the Title of a book you have read or type 'q' to quit"
        user_book_input = gets.chomp
        user_books<<new_book_input
    end

    return user_books
end

def user_author_input()
    new_author_input = ""
    user_authors = []
    
    while new_author_input != "q"
        puts "Enter the name of an Author you have read or type 'q' to quit"
        user_author_input = gets.chomp
        user_authors<<new_author_input
    end    
    
    return user_authors
end

def user_genre_input()
    new_genre_input = ""
    user_genres = []
    
    while user_genre_input != "q" 
        puts "Enter a Genre you enjoy reading or type 'q' to quit"
        user_genre_input = gets.chomp
        user_genres<<user_genre_input
    end
    
    return user_genres
end

# User.new(
#     user_name =  @user_name,
#     user_books = @user_books,
#     user_authors = @user_authors,
# 	user_genres = @user_genres
# )
    
# Parameters are as follows in this order: user_name, user_books, user_authors, user_genres)
user1 = User.new("Wade", 
["Dracula", "Harry Potter", "Name of the Wind", "Dirt Music" ], 
["Bram Stoker", "JK Rowling", "Patrick Rothfuss", "Tim Winton"], 
["Horror", "Science Fiction", "Fanatsy", "Australian"])
user2 = User.new("Owen", 
[], 
[], 
[])
]

user_library = [user1, user2]

def recommend (title, author, keyword)

end