class PersonList
  def person_list(person)
    if person.empty?
      puts 'There are no records'
    else
      (person.map.with_index do |val, index|
        puts "#{index}) Name: #{val.name}, ID: #{val.id}, Age: #{val.age}"
      end)
    end
  end
end
