# class Book
#     attr_accessor :title, :author
#     def initialize(title, author)
#         @title = title
#         @author = author
#     end

#     def book_search (search_term)
#         if @title.include?(search_term) || @author.include?(search_term)
#             return "#{@title} by #{@author}"
#         end
#     end
# end

# book_library = [
# book1 = Book.new("Harry Potter", "JK Rowling"),
# book2 = Book.new("The Green Mile", "Stephen King"),
# book3 = Book.new("Dracula", "Bram Stoker")
# ]

# # book3.book_search("Dracula")

# search_term = gets.chomp
# book_library.select { |array| array.book_search(search_term) == true }


class User
    attr_accessor :name, :books, :authors, :genres
    def initialize(user_name, user_books, user_authors, user_genres)
    	@name = user_name
    	@books = user_books
    	@authors = user_authors
    	@genres = user_genres
    end
end

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

User.new(
    user_name =  @user_name,
    user_books = @user_books,
    user_authors = @user_authors,
	user_genres = @user_genres
)
    

# user_library = [
# user1 = User.new("Wade", 
# ["Dracula", "Harry Potter", "Name of the Wind", "Dirt Music" ], 
# ["Bram Stoker", "JK Rowling", "Patrick Rothfuss", "Tim Winton"], 
# ["Horror", "Science Fiction", "Fanatsy", "Australian"])
# user2 = User.new("Owen", 
# [], 
# [], 
# [])
# ]

def recommend (title, author, keyword)

end