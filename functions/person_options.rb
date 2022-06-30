def option_one
  print 'Age: '
  @age = gets.chomp
  print 'Name: '
  name_data = gets.chomp
  @name = name_data.strip.capitalize
  print 'Classroom: '
  @classroom = gets.chomp
  print 'Has parent permission? [Y/N]: '
  @permission = gets.chomp
  loop do
    break if @permission.capitalize == 'N' || @permission.capitalize == 'Y'

    puts "#{@permission} is not a valid entry, try again"
    @permission = gets.chomp
  end
end

def option_two
  print 'Age: '
  @age = gets.chomp
  print 'Name: '
  name_data = gets.chomp
  @name = name_data.strip.capitalize
  print 'Specialization: '
  @specialization = gets.chomp
end
