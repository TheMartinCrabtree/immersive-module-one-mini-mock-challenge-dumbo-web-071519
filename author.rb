
class Author
    attr_accessor :author
    @@all =  []

    def initialize(author)
        @author = author
    

        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select do |book|
            book.author == self
        end

    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def total_words
        total = 0
        books.each do |book|
            total += book.word_count
        end

        return total
    end


end

