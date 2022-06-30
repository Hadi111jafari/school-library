require_relative './rent_available'
class RentalList
  def rental_list(rental, person)
    if rental.empty?
      puts 'There are no rentals'
    else
      rent_available(person)
    end
    puts "Name: #{@value}"
    (rental.filter_map do |res|
      puts "Date: #{res.date}, Book '#{res.book.title}' by #{res.book.author}" if res.person.name == @value
    end)
  end
end
