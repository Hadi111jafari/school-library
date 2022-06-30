def save_rental(rental)
  rental_data = []
  rental.map do |val|
    info = {}
    info['Age'] = val.person.age
    info['Name'] = val.person.name
    info['Book'] = val.book.title
    info['Author'] = val.book.author
    info['Date'] = val.date
    rental_data << info
  end
  File.write('./stored_data/rental.json', JSON.pretty_generate(rental_data))
end
