
class Book

    attr_accessor :author, :title, :word_count
    @@all = []

    def initialize(author, title, word_count)
        @author = author
        @title = title
        @word_count = word_count

        @@all << self

    end

    def self.all
        @@all    
    end

    def words_in_book
        self.word_count
    end









end

