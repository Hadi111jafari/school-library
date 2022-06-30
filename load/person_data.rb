require 'json'
require_relative '../student'
require_relative '../teacher'

def person_data(person)
  file = './stored_data/person.json'
  File.write(file, JSON.pretty_generate([])) unless File.exist?(file)
  @file_person = File.read(file)
  return if @file_person.empty?

  data_person = JSON.parse(@file_person)
  data_person.map do |value|
    name = value['name']
    age = value['age']
    if value['classroom'].nil?
      specialization = value['specialization']
      person_data = Teacher.new(specialization, age, name)
    else
      classroom = value['classroom']
      person_data = Student.new(classroom, age, name)
    end
    person_data.id = value['id']
    person.push(person_data)
  end
end
