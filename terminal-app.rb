class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def book_search (search_term)
        if @title.include?(search_term) || @author.include?(search_term)
            return "#{@title} by #{@author}"
        end
    end
end

book_library = [
book1 = Book.new("Harry Potter", "JK Rowling"),
book2 = Book.new("The Green Mile", "Stephen King"),
book3 = Book.new("Dracula", "Bram Stoker")
]

# book3.book_search("Dracula")

search_term = gets.chomp
book_library.select { |array| array.book_search(search_term) == true }
