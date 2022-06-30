class BookList
  def book_list(book)
    if book.empty?
      puts 'There are no books'
    else
      (book.map.with_index do |b, index|
        puts "#{index}) Title: #{b.title}, Author: #{b.author}"
      end)
    end
  end
end
