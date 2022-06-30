@menu = [
  { value: '1', message: 'List all books' },
  { value: '2', message: 'List all people' },
  { value: '3', message: 'Create a person' },
  { value: '4', message: 'Create a book' },
  { value: '5', message: 'Create a rental' },
  { value: '6', message: 'List all rentals for a given person id' },
  { value: '7', message: 'Exit' }
]

def print_menu
  puts "\n"
  puts 'Please choose an option by entering a number:'
  @menu.map { |option| puts "#{option[:value]} - #{option[:message]}" }
end

def load_menu
  print_menu
  @input = gets.chomp
end
