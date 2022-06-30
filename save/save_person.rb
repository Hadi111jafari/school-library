require 'json'
require_relative '../student'
require_relative '../teacher'

def save_person(person)
  person_data = []
  person.map do |val|
    info = {}
    info['name'] = val.name
    info['age'] = val.age
    info['id'] = val.id
    info['status'] = val.status
    if val.status == 'Teacher'
      info['specialization'] = val.specialization
    else
      info['classroom'] = val.classroom
    end
    person_data << info
  end
  File.write('./stored_data/person.json', JSON.pretty_generate(person_data))
end
