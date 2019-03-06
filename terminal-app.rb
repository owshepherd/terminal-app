require 'pry'

class Author
    attr_accessor :name, :books
    def initialize (name)
        @name = name
        @books = []
    end
  
    # def add_book (book) # Asterisks is used to add multiple parameters
    #     @books << book
    # end

    def add_books (books)
        books.each do |new_book|
        @books << new_book
        end
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

    def add_genres (genres)
        genres.each do |new_genre|
        @genres << new_genre
        end
    end

    def genre_search (search)
        @genres.each do |i|
            if search.include?(i.genre)
                puts @title
                return true
            end
        end
        return false
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

    def add_book_to_likes (book)
        @liked_books << book
    end

    def add_author_to_likes (author)
        @liked_authors << author
    end

    def add_genre_to_likes (genre)
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
author1.add_books([book1, book2, book3])
book1.add_genres([crime, fantasy])
book2.add_genres([horror])
book3.add_genres([horror, thriller])

author2 = Author.new ("JRR Tolkein")
book4 = Book.new ("The Hobbit")
author2.add_books([book4])
book4.add_genres([classic, fantasy])

author3 = Author.new ("Some Person")
book5 = Book.new ("The Juror")
author3.add_books([book5])
book5.add_genres([crime, mystery, contemporary])

author_array = [author1, author2, author3]
book_array = [book1, book2, book3, book4, book5]


# Start of book recommendation search
search_term = ""

book_selection_array = []

while book_selection_array.any? == false
    print "To receive a recommendation, please enter a book title: "
    search_term = gets.chomp
    book_array.each do |book|
        if book.title.include?(search_term)
            book_selection_array << book.title
        end
    end
    if book_selection_array.length == 0
        print "I don't understand. "
    end
end

puts "Confirm your selection using the relevant number from the options below:"
book_selection_array.each_with_index do |item, index|
    puts ("#{index+1}. #{item}")
end

book_selection = gets.chomp.to_i

search_term = book_selection_array[-book_selection]

genre_search_array = []

100.times do
    print "="
end

puts ()
puts "Here are your book recommendations:"

book_array.each do |book|
     if book.title.include?(search_term)
         book.genres.each do |genres|
            genre_search_array << genres.genre
        end
    end
end

book_array.each do |book|
    book.genre_search(genre_search_array)
end
# End of book and recommendation search

# Search functions for author and book
# author_array.each do |author|
#     if author.name.include?(search_term)
#         puts "#{author.name} (author)"
#     end
# end
                                                    # These can probably be combined into a single method
# book_array.each do |book|
#     if book.title.include?(search_term)
#         puts "#{book.title} (book)"
#     end
# end
# End of author and book search functions

# Search for book and produce recommendations based on genre

# Wade's section

# def create_user (1,2,3,4)
#     
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


# user_book_input
# puts 

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
#     user_genres = @user_genres
# )
    
# # user1 = "Wade" 
# # ["Dracula", "Harry Potter and the Philospers Stone", "Name of the Wind", "Dirt Music" ], 
# # ["Bram Stoker", "J.K. Rowling", "Patrick Rothfuss", "Tim Winton"], 
# # ["Horror", "Science Fiction", "Fanatsy", "Australian"])
# # user2 = "JB" 
# # ["The Blade Itself", "The Art of War", "The Outsider", "The Hitchhikers Guide to The Galaxy"], 
# # ["Joe Abercrombie", "Sun Tzu", "Stephen King", "Douglas Adams"], 
# # ["Science Fiction", "Fiction", "Fantasy", "Epic Fantasy", "Mystery", "Thriller", "Classics", "Humour", "Nonfiction", "Philosophy", "History", "War", "Politics"])
# # user3  = "Karlee"
# # ["The Five People You Meet in Heaven", "The Perks of Being a Wallflower", "The Catcher in the Rye", "To Kill a Mockingbird", "Sharp Objects"]
# # ["Mitch Albom", "Stephen Chbosky", "J.D. Salinger", "Harper Lee", "Gillian Flynn"]
# # ["Inspirational", "Contemporary", "Fiction", "Fantasy", "Young Adult", "Literature", "Classics", "Historical Fiction", "Historical", "Mystery", "Thriller", "Crime"]

# # def recommend (recommend_search)
# #     recommend_array = []
# #     if book_array.include?recommend_search
# # if recommend_array.uniq.length == 3
# #     return recommend_array
# # end