require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("Robert Frost")
author2 = Author.new("Arthur Miller")

book1 = author1.write_book("Title1", 100)
book2 = author1.write_book("Title2", 150)
author2.write_book("Title3", 120)
author2.write_book("Title4", 125)

author1_books = author1.books
author1_words = author1.total_words

book_word_count = book1.words_in_book

binding.pry


